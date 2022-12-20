import 'package:travel_app/util/util.dart';

class SessionManager {
  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  Future<bool> newUser() async {
    return await getPrefs()
        .then((prefs) => prefs.setBool(AppStrings.newUser, false));
  }

  getNewUser() {
    return getPrefs().then((prefs) => prefs.getBool(AppStrings.newUser));
  }
}
