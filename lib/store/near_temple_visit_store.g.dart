// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'near_temple_visit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NearTempleVisitStore on _NearTempleVisitStore, Store {
  final _$nearTempleVisitListAtom =
      Atom(name: '_NearTempleVisitStore.nearTempleVisitList');

  @override
  ObservableStream<List<NearTempleVisitResponse>> get nearTempleVisitList {
    _$nearTempleVisitListAtom.reportRead();
    return super.nearTempleVisitList;
  }

  @override
  set nearTempleVisitList(
      ObservableStream<List<NearTempleVisitResponse>> value) {
    _$nearTempleVisitListAtom.reportWrite(value, super.nearTempleVisitList, () {
      super.nearTempleVisitList = value;
    });
  }

  final _$_NearTempleVisitStoreActionController =
      ActionController(name: '_NearTempleVisitStore');

  @override
  dynamic nearTempleVisit() {
    final _$actionInfo = _$_NearTempleVisitStoreActionController.startAction(
        name: '_NearTempleVisitStore.nearTempleVisit');
    try {
      return super.nearTempleVisit();
    } finally {
      _$_NearTempleVisitStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nearTempleVisitList: ${nearTempleVisitList}
    ''';
  }
}
