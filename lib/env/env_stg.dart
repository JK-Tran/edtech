import 'package:edtech/env/env.dart';

class StgEnv implements Env {
  static void setup() {
    Env.apiBaseUrl = 'https://api-stg.example.com';
    Env.envName = 'staging';
  }
}
