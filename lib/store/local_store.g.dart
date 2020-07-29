// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LocalStore on _LocalStore, Store {
  final _$userIdAtom = Atom(name: '_LocalStore.userId');

  @override
  String get userId {
    _$userIdAtom.reportRead();
    return super.userId;
  }

  @override
  set userId(String value) {
    _$userIdAtom.reportWrite(value, super.userId, () {
      super.userId = value;
    });
  }

  final _$userNameAtom = Atom(name: '_LocalStore.userName');

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  final _$emailAtom = Atom(name: '_LocalStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$mobileAtom = Atom(name: '_LocalStore.mobile');

  @override
  String get mobile {
    _$mobileAtom.reportRead();
    return super.mobile;
  }

  @override
  set mobile(String value) {
    _$mobileAtom.reportWrite(value, super.mobile, () {
      super.mobile = value;
    });
  }

  final _$profilePictureAtom = Atom(name: '_LocalStore.profilePicture');

  @override
  String get profilePicture {
    _$profilePictureAtom.reportRead();
    return super.profilePicture;
  }

  @override
  set profilePicture(String value) {
    _$profilePictureAtom.reportWrite(value, super.profilePicture, () {
      super.profilePicture = value;
    });
  }

  final _$addressAtom = Atom(name: '_LocalStore.address');

  @override
  String get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  final _$whereSignUpAtom = Atom(name: '_LocalStore.whereSignUp');

  @override
  int get whereSignUp {
    _$whereSignUpAtom.reportRead();
    return super.whereSignUp;
  }

  @override
  set whereSignUp(int value) {
    _$whereSignUpAtom.reportWrite(value, super.whereSignUp, () {
      super.whereSignUp = value;
    });
  }

  final _$getUserDetailAsyncAction = AsyncAction('_LocalStore.getUserDetail');

  @override
  Future getUserDetail() {
    return _$getUserDetailAsyncAction.run(() => super.getUserDetail());
  }

  @override
  String toString() {
    return '''
userId: ${userId},
userName: ${userName},
email: ${email},
mobile: ${mobile},
profilePicture: ${profilePicture},
address: ${address},
whereSignUp: ${whereSignUp}
    ''';
  }
}
