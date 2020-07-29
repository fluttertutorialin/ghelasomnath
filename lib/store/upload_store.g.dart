// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UploadStore on _UploadStore, Store {
  final _$pathAtom = Atom(name: '_UploadStore.path');

  @override
  String get path {
    _$pathAtom.reportRead();
    return super.path;
  }

  @override
  set path(String value) {
    _$pathAtom.reportWrite(value, super.path, () {
      super.path = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_UploadStore.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$visitTypeAtom = Atom(name: '_UploadStore.visitType');

  @override
  int get visitType {
    _$visitTypeAtom.reportRead();
    return super.visitType;
  }

  @override
  set visitType(int value) {
    _$visitTypeAtom.reportWrite(value, super.visitType, () {
      super.visitType = value;
    });
  }

  final _$visitTypeTextAtom = Atom(name: '_UploadStore.visitTypeText');

  @override
  String get visitTypeText {
    _$visitTypeTextAtom.reportRead();
    return super.visitTypeText;
  }

  @override
  set visitTypeText(String value) {
    _$visitTypeTextAtom.reportWrite(value, super.visitTypeText, () {
      super.visitTypeText = value;
    });
  }

  final _$fileAtom = Atom(name: '_UploadStore.file');

  @override
  File get file {
    _$fileAtom.reportRead();
    return super.file;
  }

  @override
  set file(File value) {
    _$fileAtom.reportWrite(value, super.file, () {
      super.file = value;
    });
  }

  final _$uploadAsyncAction = AsyncAction('_UploadStore.upload');

  @override
  Future<void> upload() {
    return _$uploadAsyncAction.run(() => super.upload());
  }

  final _$_UploadStoreActionController = ActionController(name: '_UploadStore');

  @override
  void setPath(String value) {
    final _$actionInfo = _$_UploadStoreActionController.startAction(
        name: '_UploadStore.setPath');
    try {
      return super.setPath(value);
    } finally {
      _$_UploadStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String value) {
    final _$actionInfo = _$_UploadStoreActionController.startAction(
        name: '_UploadStore.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$_UploadStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVisitType(int value) {
    final _$actionInfo = _$_UploadStoreActionController.startAction(
        name: '_UploadStore.setVisitType');
    try {
      return super.setVisitType(value);
    } finally {
      _$_UploadStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVisitTypeText(String value) {
    final _$actionInfo = _$_UploadStoreActionController.startAction(
        name: '_UploadStore.setVisitTypeText');
    try {
      return super.setVisitTypeText(value);
    } finally {
      _$_UploadStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFile(File value) {
    final _$actionInfo = _$_UploadStoreActionController.startAction(
        name: '_UploadStore.setFile');
    try {
      return super.setFile(value);
    } finally {
      _$_UploadStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
path: ${path},
description: ${description},
visitType: ${visitType},
visitTypeText: ${visitTypeText},
file: ${file}
    ''';
  }
}
