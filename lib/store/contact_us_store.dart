import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ghelasomnath/model/contact_response.dart';
import 'package:ghelasomnath/shared/repository.dart';
import 'package:mobx/mobx.dart';
part 'contact_us_store.g.dart';

class ContactUsStore = _ContactUsStore with _$ContactUsStore;

abstract class _ContactUsStore with Store {
  final Repository _repository;

  _ContactUsStore(this._repository) {
    contactUs();
  }

  @observable
  ObservableList<ContactResponse> contactUsList = ObservableList<ContactResponse>.of([]);

  @action
  contactUs() {
    _repository.contactUs().listen((QuerySnapshot snapshot) => contactUsList =
        ObservableList.of(snapshot.documents
            .map((documentSnapshot) =>
                ContactResponse.fromJson(documentSnapshot.data))
            .toList()));
  }
}

/*
call feature in firebase
  @observable
  ObservableList<Category> categories = ObservableList<Category>.of([]);

  QuerySnapshot query = await _api.fetchCategories;
    categories = ObservableList.of(
      query.documents
          .map((DocumentSnapshot doc) => Category.fromJson(doc.data))
          .toList(),
    );
*/
