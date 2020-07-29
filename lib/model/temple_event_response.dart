import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
part 'temple_event_response.g.dart';

class TempleEventResponse extends _TempleEventModelBase
    with _$TempleEventResponse {
  TempleEventResponse(
      {String uid,
      String shortImage,
      shareImage,
      largeImage,
      description,
      currentDateTime,
      visitType,
      favourite})
      : super(
            uid: uid,
            shortImage: shortImage,
            shareImage: shareImage,
            largeImage: largeImage,
            description: description,
            visitType: visitType,
            currentDateTime: currentDateTime,
            favourite: favourite);

  factory TempleEventResponse.fromDocument(DocumentSnapshot snapshot) {
    return TempleEventResponse(
        uid: snapshot.documentID,
        shortImage: snapshot['shortImage'],
        shareImage: snapshot['shareImage'],
        largeImage: snapshot['largeImage'],
        description: snapshot['description'],
        visitType: snapshot['visitType'],
        currentDateTime: snapshot['currentDateTime'],
        favourite: snapshot['favourite'] as List<dynamic>);
  }

  Map<String, dynamic> toJson() => {
        'shortImage': shortImage,
        'shareImage': shareImage,
        'largeImage': largeImage,
        'description': description,
        'visitType': visitType,
        'currentDateTime': currentDateTime,
        'favourite': favourite
      };
}

abstract class _TempleEventModelBase with Store {
  String uid;

  @observable
  String shortImage;

  @observable
  String shareImage;

  @observable
  String largeImage;

  @observable
  String description;

  @observable
  String visitType;

  @observable
  List<dynamic> favourite;

  @observable
  String currentDateTime;

  _TempleEventModelBase(
      {this.uid,
      this.shortImage,
      this.shareImage,
      this.largeImage,
      this.description,
      this.visitType,
      this.currentDateTime,
      this.favourite});
}
