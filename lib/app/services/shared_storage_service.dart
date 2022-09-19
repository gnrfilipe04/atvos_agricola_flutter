import 'package:atvos_agricola/app/interfaces/local_storage_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedStorage implements ILocalStorage {
  @override
  Future delete({bool isFile = false, required String key}) async {
    if (!isFile) {
      final shared = await SharedPreferences.getInstance();
      shared.remove(key);
    }
  }

  @override
  Future get({bool isFile = false, required String key}) async {
    if (!isFile) {
      final shared = await SharedPreferences.getInstance();
      return shared.get(key);
    }
  }

  @override
  Future save(
      {bool isFile = false,
      required String key,
      required dynamic value}) async {
    if (!isFile) {
      final shared = await SharedPreferences.getInstance();

      if (value is bool) {
        shared.setBool(key, value);
      } else if (value is String) {
        shared.setString(key, value);
      } else if (value is int) {
        shared.setInt(key, value);
      } else if (value is double) {
        shared.setDouble(key, value);
      }
    }
  }
}
