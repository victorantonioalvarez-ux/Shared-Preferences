import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _nom = '';
  static bool _isDarkMode = false;
  static int _genere = 1;

  static Future init() async{
    _prefs = await SharedPreferences.getInstance();
  }
}