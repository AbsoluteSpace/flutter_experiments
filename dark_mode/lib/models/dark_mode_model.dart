import 'package:scoped_model/scoped_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkModeModel extends Model {
  bool _darkMode = false;

  void load() async {
    final prefs = await SharedPreferences.getInstance();

    _darkMode = prefs.getBool("dark") ?? false;

    notifyListeners();
  }

  bool get darkMode {
    return _darkMode;
  }

  void setDarkMode(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("dark", isDark);
    _darkMode = isDark;
    notifyListeners();
  }
}
