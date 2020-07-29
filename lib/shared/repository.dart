import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:ghelasomnath/model/history_response.dart';
import 'package:ghelasomnath/model/near_temple_visit_response.dart';
import 'package:ghelasomnath/model/temple_event_response.dart';
import 'package:ghelasomnath/shared/api_service_interface.dart';
import 'package:ghelasomnath/util/string.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class Repository implements IAPIService {
  var _fireStore;
  var _firebaseAuth;

  Repository(this._fireStore, this._firebaseAuth);

  @override
  Stream<List<TempleEventResponse>> templeEvent() {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(now);

    return Firestore()
        .collection(templeEventTable)
        .where('currentDateTime', isEqualTo: formatted)
        .where('status', isEqualTo: true)
        .snapshots()
        .map((docs) => docs.documents
            .map<TempleEventResponse>(
                (response) => TempleEventResponse.fromDocument(response))
            .toList());
  }

  @override
  Stream<List<TempleEventResponse>> allDarsan() {
    return Firestore()
        .collection(templeEventTable)
        .where('status', isEqualTo: true)
        .snapshots()
        .map((docs) => docs.documents
            .map<TempleEventResponse>(
                (response) => TempleEventResponse.fromDocument(response))
            .toList());
  }

  @override
  Stream<List<HistoryResponse>> history() {
    return Firestore().collection(historyTable).snapshots().map((docs) => docs
        .documents
        .map<HistoryResponse>(
            (response) => HistoryResponse.fromDocument(response))
        .toList());
  }

  Stream<QuerySnapshot> contactUs() {
    return _fireStore.collection(contactUsTable).snapshots();
  }

  @override
  Stream<List<NearTempleVisitResponse>> nearTempleVisit() {
    return Firestore().collection(nearTempleVisitTable).snapshots().map(
        (docs) => docs.documents
            .map<NearTempleVisitResponse>(
                (response) => NearTempleVisitResponse.fromDocument(response))
            .toList());
  }

  @override
  Stream<List<NearTempleVisitResponse>> templeFind() {
    return Firestore().collection(templeFindTable).snapshots().map((docs) =>
        docs.documents
            .map<NearTempleVisitResponse>(
                (response) => NearTempleVisitResponse.fromDocument(response))
            .toList());
  }

  @override
  upload(String path, String description, String visitType, File file) async {
    var storageReference = FirebaseStorage.instance
        .ref()
        .child(templeStorage + Uuid().v4().replaceAll("-", "_") + path);
    StorageUploadTask uploadTask = storageReference.putFile(file);
    await uploadTask.onComplete;

    if (uploadTask.isComplete) {
      final DateTime now = DateTime.now();
      final DateFormat formatter = DateFormat('dd-MM-yyyy');
      final String formatted = formatter.format(now);

      storageReference.getDownloadURL().then((fileURL) {
        _fireStore.collection(templeEventTable).add({
          'notificationId': "",
          'largeImage': "",
          'shareImage': "",
          'shortImage': fileURL,
          'description': description,
          'favourite': List<String>(),
          'visitType': visitType,
          'currentDateTime': formatted,
          'status': true,
        });

        return fileURL;
      });
    }
  }
}
