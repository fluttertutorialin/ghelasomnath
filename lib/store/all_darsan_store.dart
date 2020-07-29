import 'package:ghelasomnath/model/temple_event_response.dart';
import 'package:ghelasomnath/shared/repository.dart';
import 'package:mobx/mobx.dart';
part 'all_darsan_store.g.dart';

class AllDarsanStore = _AllDarsanStore with _$AllDarsanStore;

abstract class _AllDarsanStore with Store {
  final Repository _repository;

  _AllDarsanStore(this._repository) {
    templeEvent();
  }

  @observable
  ObservableStream<List<TempleEventResponse>> liveEventList;

  @action
  templeEvent() {
    liveEventList = _repository.allDarsan().asObservable();
  }
}
