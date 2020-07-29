// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ContactUsStore on _ContactUsStore, Store {
  final _$contactUsListAtom = Atom(name: '_ContactUsStore.contactUsList');

  @override
  ObservableList<ContactResponse> get contactUsList {
    _$contactUsListAtom.reportRead();
    return super.contactUsList;
  }

  @override
  set contactUsList(ObservableList<ContactResponse> value) {
    _$contactUsListAtom.reportWrite(value, super.contactUsList, () {
      super.contactUsList = value;
    });
  }

  final _$_ContactUsStoreActionController =
      ActionController(name: '_ContactUsStore');

  @override
  dynamic contactUs() {
    final _$actionInfo = _$_ContactUsStoreActionController.startAction(
        name: '_ContactUsStore.contactUs');
    try {
      return super.contactUs();
    } finally {
      _$_ContactUsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
contactUsList: ${contactUsList}
    ''';
  }
}
