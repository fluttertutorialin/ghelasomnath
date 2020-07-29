import 'package:ghelasomnath/model/history_response.dart';
import 'package:ghelasomnath/shared/repository.dart';
import 'package:mobx/mobx.dart';
part 'history_store.g.dart';

class HistoryStore = _HistoryStoreStore with _$HistoryStore;

abstract class _HistoryStoreStore with Store {
  final Repository _repository;

  _HistoryStoreStore(this._repository) {
    history();
  }

  @observable
  ObservableStream<List<HistoryResponse>> historyList;

  @action
  history() {
    historyList = _repository.history().asObservable();
  }
}
