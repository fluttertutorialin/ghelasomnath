// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_response.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HistoryResponse on _HistoryModelBase, Store {
  final _$historyAtom = Atom(name: '_HistoryModelBase.history');

  @override
  String get history {
    _$historyAtom.reportRead();
    return super.history;
  }

  @override
  set history(String value) {
    _$historyAtom.reportWrite(value, super.history, () {
      super.history = value;
    });
  }

  @override
  String toString() {
    return '''
history: ${history}
    ''';
  }
}
