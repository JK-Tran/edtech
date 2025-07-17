import 'package:edtech/env/env.dart';

class DevEnv implements Env {
  static void setup() {
    Env.apiBaseUrl = 'https://api-dev.example.com';
    Env.envName = 'development';
  }
}
