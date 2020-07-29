// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temple_event_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TempleEventStore on _TempleEventStore, Store {
  final _$liveEventListAtom = Atom(name: '_TempleEventStore.liveEventList');

  @override
  ObservableStream<List<TempleEventResponse>> get liveEventList {
    _$liveEventListAtom.reportRead();
    return super.liveEventList;
  }

  @override
  set liveEventList(ObservableStream<List<TempleEventResponse>> value) {
    _$liveEventListAtom.reportWrite(value, super.liveEventList, () {
      super.liveEventList = value;
    });
  }

  final _$_TempleEventStoreActionController =
      ActionController(name: '_TempleEventStore');

  @override
  dynamic templeEvent() {
    final _$actionInfo = _$_TempleEventStoreActionController.startAction(
        name: '_TempleEventStore.templeEvent');
    try {
      return super.templeEvent();
    } finally {
      _$_TempleEventStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
liveEventList: ${liveEventList}
    ''';
  }
}
