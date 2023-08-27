import 'package:shared_preferences/shared_preferences.dart';

class StorageHandler {
  saveData(bool data) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', data);
  }

  Future<bool> getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }
}