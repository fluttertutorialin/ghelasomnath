import 'package:flutter_modular/flutter_modular.dart';
import 'package:ghelasomnath/shared/local_storage_repository_inteface.dart';
import 'package:ghelasomnath/util/string.dart';
import 'package:mobx/mobx.dart';
part 'local_store.g.dart';

class LocalStore = _LocalStore with _$LocalStore;

abstract class _LocalStore with Store {
  var prefs = Modular.get<ISharedLocalRepository>();

  _LocalStore() {
    getUserDetail();
  }

  @observable
  String userId;

  @observable
  String userName;

  @observable
  String email;

  @observable
  String mobile;

  @observable
  String profilePicture;

  @observable
  String address;

  @observable
  int whereSignUp;

  @action
  getUserDetail() async {
    userName = await prefs.get(userNamePref);
    email = await prefs.get(emailPref);
    userId = await prefs.get(userIdPref);
    mobile = await prefs.get(mobilePref);
    profilePicture = await prefs.get(profilePicturePref);
    address = await prefs.get(addressPref);
    whereSignUp = await prefs.get(isWhereSignUpPref);
  }
}
