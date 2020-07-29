import 'dart:async';
import 'package:ghelasomnath/shared/local_storage_repository_inteface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedRepository implements ISharedLocalRepository {
  Completer<SharedPreferences> _instance = Completer<SharedPreferences>();

  _init() async {
    _instance.complete(await SharedPreferences.getInstance());
  }

  SharedRepository() {
    _init();
  }

  @override
  Future get(String key) async {
    var shared = await _instance.future;
    return shared.get(key);
  }

  @override
  Future insert(String key, dynamic value) async {
    var shared = await _instance.future;
    if (value is bool) {
      shared.setBool(key, value);
    } else if (value is String) {
      shared.setString(key, value);
    } else if (value is double) {
      shared.setDouble(key, value);
    } else if (value is int) {
      shared.setInt(key, value);
    } else if (value is List<String>) {
      shared.setStringList(key, value);
    } else if (value is List<dynamic>) {
      shared.setStringList(key, value);
    }
  }

  @override
  Future remove(String key) async {
    var shared = await _instance.future;
    return shared.remove(key);
  }
}
