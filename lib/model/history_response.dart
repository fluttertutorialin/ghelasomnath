import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
part 'history_response.g.dart';

class HistoryResponse extends _HistoryModelBase with _$HistoryResponse {
  HistoryResponse({String uid, String history})
      : super(uid: uid, history: history);

  factory HistoryResponse.fromDocument(DocumentSnapshot snapshot) {
    return HistoryResponse(
        uid: snapshot.documentID, history: snapshot['history']);
  }

  Map<String, dynamic> toJson() => {'history': history};
}

abstract class _HistoryModelBase with Store {
  String uid;

  @observable
  String history;

  _HistoryModelBase({this.uid, this.history});
}
