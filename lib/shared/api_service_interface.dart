import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ghelasomnath/model/history_response.dart';
import 'package:ghelasomnath/model/near_temple_visit_response.dart';
import 'package:ghelasomnath/model/temple_event_response.dart';

abstract class IAPIService {
  Stream<List<TempleEventResponse>> templeEvent();
  Stream<List<TempleEventResponse>> allDarsan();
  Stream<List<HistoryResponse>> history();
  Stream<QuerySnapshot> contactUs();
  Stream<List<NearTempleVisitResponse>> nearTempleVisit();
  Stream<List<NearTempleVisitResponse>> templeFind();
  upload(String path, String description, String visitType, File file);
}
