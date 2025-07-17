import 'package:edtech/core/constants/env_constants.dart';
import 'package:edtech/core/services/firebase/firebase_analytics.dart';

class TrackingServices {
  const TrackingServices._();

  static void eventSignIn(String username, String dateNow) {
    if (EnvConstants.isProduction) {
      AntoreeAnalytics.instance.logEvent(
        name: 'student_sign_in',
        parameters: <String, dynamic>{
          'username': username,
          'time': dateNow,
        },
      );
    }
  }

  static void eventAbsentRequestSent({
    required String username,
    String? unitId,
    String? dateNow,
  }) {
    if (EnvConstants.isProduction) {
      AntoreeAnalytics.instance.logEvent(
        name: 'student_absent_requested',
        parameters: <String, dynamic>{
          'username': username,
          'courseId': unitId,
          'time': dateNow,
        },
      );
    }
  }

  static void eventTrackingMakeupRequested({
    required String username,
    String? unitId,
    String? dateNow,
  }) {
    if (EnvConstants.isProduction) {
      AntoreeAnalytics.instance.logEvent(
        name: 'student_makeup_requested',
        parameters: <String, dynamic>{
          'username': username,
          'unitId': unitId,
          'time': dateNow,
        },
      );
    }
  }

  static void eventTrackingConfirmMakeUp({
    required String username,
    String? unitId,
    String? dateNow,
  }) {
    if (EnvConstants.isProduction) {
      AntoreeAnalytics.instance.logEvent(
        name: 'student_confirm_makeup',
        parameters: <String, dynamic>{
          'username': username,
          'unitId': unitId,
          'time': dateNow,
        },
      );
    }
  }

  static void eventTrackingConfirmUnit({
    required String username,
    String? unitId,
    String? confirmStatus,
    String? dateNow,
  }) {
    if (EnvConstants.isProduction) {
      AntoreeAnalytics.instance.logEvent(
        name: 'student_confirm_makeup',
        parameters: <String, dynamic>{
          'username': username,
          'status': confirmStatus,
          'unitId': unitId,
          'time': dateNow,
        },
      );
    }
  }

  static void eventTrackingPlayUnitVideo(
    String dateNow,
  ) {
    if (EnvConstants.isProduction) {
      AntoreeAnalytics.instance.logEvent(
        name: 'play_unit_video',
        parameters: <String, dynamic>{
          'time': dateNow,
        },
      );
    }
  }

  static void eventUnitFeedbackSubmitted({
    required String username,
    String? unitId,
    String? dateNow,
  }) {
    if (EnvConstants.isProduction) {
      AntoreeAnalytics.instance.logEvent(
        name: 'unit_rating',
        parameters: <String, dynamic>{
          'username': username,
          'unitId': unitId,
          'dateNow': dateNow,
        },
      );
    }
  }
}
