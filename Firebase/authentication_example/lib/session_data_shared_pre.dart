import 'package:shared_preferences/shared_preferences.dart';

class SessionData {
  static bool? isLogin;
  static String? email;
  static Future<void> storeSessionData(
      {required bool isLogin, required String email}) async {
    ///INSTANCE OF SHARED PREFERENCES
    final sharedPreferences = await SharedPreferences.getInstance();

    ///SET DATA
    sharedPreferences.setBool("isLogin", isLogin);
    sharedPreferences.setString("email", email);

    ///GET DATA
    getSessionData();
  }

  static Future<void> getSessionData() async {
    ///INSTANCE OF SHARED PREFERENCES
    final sharedPreferences = await SharedPreferences.getInstance();

    ///GET DATA
    isLogin = sharedPreferences.getBool("isLogin") ?? false;
    email = sharedPreferences.getString("email") ?? "";
  }
}
