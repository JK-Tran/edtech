import 'package:edtech/core/navigation/app_navigator.dart';
import 'package:edtech/core/navigation/app_popup_info.dart';
import 'package:flutter/material.dart';

abstract class BasePopupInfoMapper {
  Widget map(AppPopupInfo appPopupInfo, AppNavigator navigator);
}
