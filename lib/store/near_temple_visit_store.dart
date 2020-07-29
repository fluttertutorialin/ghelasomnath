import 'package:ghelasomnath/model/near_temple_visit_response.dart';
import 'package:ghelasomnath/shared/repository.dart';
import 'package:mobx/mobx.dart';
part 'near_temple_visit_store.g.dart';

class NearTempleVisitStore = _NearTempleVisitStore with _$NearTempleVisitStore;

abstract class _NearTempleVisitStore with Store {
  final Repository _repository;

  _NearTempleVisitStore(this._repository) {
    nearTempleVisit();
  }

  @observable
  ObservableStream<List<NearTempleVisitResponse>> nearTempleVisitList;

  @action
  nearTempleVisit() {
    nearTempleVisitList = _repository.nearTempleVisit().asObservable();
  }
}
