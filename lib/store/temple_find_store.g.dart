// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temple_find_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TempleFindStore on _TempleFindStore, Store {
  final _$templeFindListAtom = Atom(name: '_TempleFindStore.templeFindList');

  @override
  ObservableStream<List<NearTempleVisitResponse>> get templeFindList {
    _$templeFindListAtom.reportRead();
    return super.templeFindList;
  }

  @override
  set templeFindList(ObservableStream<List<NearTempleVisitResponse>> value) {
    _$templeFindListAtom.reportWrite(value, super.templeFindList, () {
      super.templeFindList = value;
    });
  }

  final _$_TempleFindStoreActionController =
      ActionController(name: '_TempleFindStore');

  @override
  dynamic templeFind() {
    final _$actionInfo = _$_TempleFindStoreActionController.startAction(
        name: '_TempleFindStore.templeFind');
    try {
      return super.templeFind();
    } finally {
      _$_TempleFindStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
templeFindList: ${templeFindList}
    ''';
  }
}
