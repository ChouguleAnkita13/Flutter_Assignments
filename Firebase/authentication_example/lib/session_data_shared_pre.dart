import 'package:shared_preferences/shared_preferences.dart';

class SessionData {
  static bool? isLogin;
  static String? email;

  ///Function to store Data in shared prefernce
  ///Here we are storing login and email
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

  ///Function to Get Data from shared prefernce
  static Future<void> getSessionData() async {
    ///INSTANCE OF SHARED PREFERENCES
    final sharedPreferences = await SharedPreferences.getInstance();

    ///GET DATA
    isLogin = sharedPreferences.getBool("isLogin") ?? false;
    email = sharedPreferences.getString("email") ?? "";
  }
}
