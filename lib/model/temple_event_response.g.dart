// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temple_event_response.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TempleEventResponse on _TempleEventModelBase, Store {
  final _$shortImageAtom = Atom(name: '_TempleEventModelBase.shortImage');

  @override
  String get shortImage {
    _$shortImageAtom.reportRead();
    return super.shortImage;
  }

  @override
  set shortImage(String value) {
    _$shortImageAtom.reportWrite(value, super.shortImage, () {
      super.shortImage = value;
    });
  }

  final _$shareImageAtom = Atom(name: '_TempleEventModelBase.shareImage');

  @override
  String get shareImage {
    _$shareImageAtom.reportRead();
    return super.shareImage;
  }

  @override
  set shareImage(String value) {
    _$shareImageAtom.reportWrite(value, super.shareImage, () {
      super.shareImage = value;
    });
  }

  final _$largeImageAtom = Atom(name: '_TempleEventModelBase.largeImage');

  @override
  String get largeImage {
    _$largeImageAtom.reportRead();
    return super.largeImage;
  }

  @override
  set largeImage(String value) {
    _$largeImageAtom.reportWrite(value, super.largeImage, () {
      super.largeImage = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_TempleEventModelBase.description');

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

  final _$visitTypeAtom = Atom(name: '_TempleEventModelBase.visitType');

  @override
  String get visitType {
    _$visitTypeAtom.reportRead();
    return super.visitType;
  }

  @override
  set visitType(String value) {
    _$visitTypeAtom.reportWrite(value, super.visitType, () {
      super.visitType = value;
    });
  }

  final _$favouriteAtom = Atom(name: '_TempleEventModelBase.favourite');

  @override
  List<dynamic> get favourite {
    _$favouriteAtom.reportRead();
    return super.favourite;
  }

  @override
  set favourite(List<dynamic> value) {
    _$favouriteAtom.reportWrite(value, super.favourite, () {
      super.favourite = value;
    });
  }

  final _$currentDateTimeAtom =
      Atom(name: '_TempleEventModelBase.currentDateTime');

  @override
  String get currentDateTime {
    _$currentDateTimeAtom.reportRead();
    return super.currentDateTime;
  }

  @override
  set currentDateTime(String value) {
    _$currentDateTimeAtom.reportWrite(value, super.currentDateTime, () {
      super.currentDateTime = value;
    });
  }

  @override
  String toString() {
    return '''
shortImage: ${shortImage},
shareImage: ${shareImage},
largeImage: ${largeImage},
description: ${description},
visitType: ${visitType},
favourite: ${favourite},
currentDateTime: ${currentDateTime}
    ''';
  }
}
