import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
part 'near_temple_visit_response.g.dart';

class NearTempleVisitResponse extends _NearTempleVisitModelBase
    with _$NearTempleVisitResponse {
  NearTempleVisitResponse({String uid, String name, address})
      : super(
          uid: uid,
          name: name,
          address: address,
        );

  factory NearTempleVisitResponse.fromDocument(DocumentSnapshot snapshot) {
    return NearTempleVisitResponse(
        uid: snapshot.documentID,
        name: snapshot['name'],
        address: snapshot['address']);
  }

  Map<String, dynamic> toJson() => {'name': name, 'address': address};
}

abstract class _NearTempleVisitModelBase with Store {
  String uid;

  @observable
  String name;

  @observable
  String address;

  _NearTempleVisitModelBase({this.uid, this.name, this.address});
}
