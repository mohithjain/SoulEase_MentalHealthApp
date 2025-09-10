import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class JwtTokenController {
  static Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token')??prefs.getString('jwt_token');
  }

  static Future<void> setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    await prefs.setString('jwt_token', token);
  }

  static Future<void> clearToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    await prefs.remove('jwt_token');
  }

  static bool isTokenValid(String? token) {
    if (token == null) {
      return false;
    }
    return !JwtDecoder.isExpired(token);
  }
}
