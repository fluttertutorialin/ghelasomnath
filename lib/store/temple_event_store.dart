import 'package:ghelasomnath/model/temple_event_response.dart';
import 'package:ghelasomnath/shared/repository.dart';
import 'package:mobx/mobx.dart';
part 'temple_event_store.g.dart';

class TempleEventStore = _TempleEventStore with _$TempleEventStore;

abstract class _TempleEventStore with Store {
  final Repository _repository;

  _TempleEventStore(this._repository) {
    templeEvent();
  }

  @observable
  ObservableStream<List<TempleEventResponse>> liveEventList;

  @action
  templeEvent() {
    liveEventList = _repository.templeEvent().asObservable();
  }
}
