// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_darsan_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AllDarsanStore on _AllDarsanStore, Store {
  final _$liveEventListAtom = Atom(name: '_AllDarsanStore.liveEventList');

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

  final _$_AllDarsanStoreActionController =
      ActionController(name: '_AllDarsanStore');

  @override
  dynamic templeEvent() {
    final _$actionInfo = _$_AllDarsanStoreActionController.startAction(
        name: '_AllDarsanStore.templeEvent');
    try {
      return super.templeEvent();
    } finally {
      _$_AllDarsanStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
liveEventList: ${liveEventList}
    ''';
  }
}
