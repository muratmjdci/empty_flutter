import 'package:shared_preferences/shared_preferences.dart';

import '../app/enums/storage_keys.dart';

class StorageService {
  static StorageService? _instance;
  static SharedPreferences? _preferences;

  static Future<StorageService?> getInstance() async {
    _instance ??= StorageService();
    _preferences ??= await SharedPreferences.getInstance();
    return _instance;
  }

  String? getString(StorageKeys key) {
    if (_preferences == null) throw Exception("NOT INITIALIZED");
    return _preferences!.getString(key.name);
  }

  Future<bool> setString(StorageKeys key, String value) async {
    if (_preferences == null) throw Exception("NOT INITIALIZED");
    return await _preferences!.setString(key.name, value);
  }

  String? getToken() {
    if (_preferences == null) throw Exception("NOT INITIALIZED");
    return _preferences!.getString(StorageKeys.token.name);
  }

  Future<bool> setToken(String token) {
    if (_preferences == null) throw Exception("NOT INITIALIZED");
    return _preferences!.setString(StorageKeys.token.name, token);
  }

  Future<bool> setBool(StorageKeys key, bool token) {
    if (_preferences == null) throw Exception("NOT INITIALIZED");
    return _preferences!.setBool(key.name, token);
  }

  bool getBool(StorageKeys key) {
    if (_preferences == null) throw Exception("NOT INITIALIZED");
    return _preferences!.getBool(key.name) ?? false;
  }

  Future<bool> deleteKey(StorageKeys key) async {
    if (_preferences == null) throw Exception("NOT INITIALIZED");
    return await _preferences!.remove(key.name);
  }

  Future<bool> deleteToken() async {
    if (_preferences == null) throw Exception("NOT INITIALIZED");
    return await _preferences!.remove(StorageKeys.token.name);
  }

  bool get isLogin => _preferences?.getBool(StorageKeys.isLogin.name) ?? false;
}
