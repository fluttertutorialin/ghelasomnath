// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HistoryStore on _HistoryStoreStore, Store {
  final _$historyListAtom = Atom(name: '_HistoryStoreStore.historyList');

  @override
  ObservableStream<List<HistoryResponse>> get historyList {
    _$historyListAtom.reportRead();
    return super.historyList;
  }

  @override
  set historyList(ObservableStream<List<HistoryResponse>> value) {
    _$historyListAtom.reportWrite(value, super.historyList, () {
      super.historyList = value;
    });
  }

  final _$_HistoryStoreStoreActionController =
      ActionController(name: '_HistoryStoreStore');

  @override
  dynamic history() {
    final _$actionInfo = _$_HistoryStoreStoreActionController.startAction(
        name: '_HistoryStoreStore.history');
    try {
      return super.history();
    } finally {
      _$_HistoryStoreStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
historyList: ${historyList}
    ''';
  }
}
