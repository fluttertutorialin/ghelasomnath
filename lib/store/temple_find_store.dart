import 'package:ghelasomnath/model/near_temple_visit_response.dart';
import 'package:ghelasomnath/shared/repository.dart';
import 'package:mobx/mobx.dart';
part 'temple_find_store.g.dart';

class TempleFindStore = _TempleFindStore with _$TempleFindStore;

abstract class _TempleFindStore with Store {
  final Repository _repository;

  _TempleFindStore(this._repository) {
    templeFind();
  }

  @observable
  ObservableStream<List<NearTempleVisitResponse>> templeFindList;

  @action
  templeFind() {
    templeFindList = _repository.templeFind().asObservable();
  }
}
