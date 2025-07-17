import 'package:edtech/core/constants/ui/device_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimen {
  factory AppDimen.of(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeight = MediaQuery.sizeOf(context).height;
    final devicePixelRatio = MediaQuery.devicePixelRatioOf(context);

    return current = AppDimen._(
      screenWidth: screenWidth,
      screenHeight: screenHeight,
      devicePixelRatio: devicePixelRatio,
      screenType: _getScreenType(screenWidth),
    );
  }
  AppDimen._({
    required this.screenWidth,
    required this.screenHeight,
    required this.devicePixelRatio,
    required this.screenType,
  });

  static late AppDimen current;

  final double screenWidth;
  final double screenHeight;
  final double devicePixelRatio;
  final ScreenType screenType;

  double responsiveDimens({
    required double mobile,
    double? tablet,
    double? ultraTablet,
  }) {
    switch (screenType) {
      case ScreenType.mobile:
        return mobile.w;
      case ScreenType.tablet:
        return tablet?.w ??
            ((mobile * DeviceConstants.maxMobileWidth) /
                DeviceConstants.designDeviceWidth);
      case ScreenType.ultraTablet:
        return ultraTablet?.w ??
            ((mobile * DeviceConstants.maxMobileWidth) /
                DeviceConstants.designDeviceWidth);
    }
  }

  int responsiveIntValue({
    required int mobile,
    int? tablet,
    int? ultraTablet,
  }) {
    switch (screenType) {
      case ScreenType.mobile:
        return mobile;
      case ScreenType.tablet:
        return tablet ?? mobile;
      case ScreenType.ultraTablet:
        return ultraTablet ?? mobile;
    }
  }

  static ScreenType _getScreenType(double screenWidth) {
    if (screenWidth <= DeviceConstants.maxMobileWidth) {
      return ScreenType.mobile;
    } else if (screenWidth <= DeviceConstants.maxTabletWidth) {
      return ScreenType.tablet;
    } else {
      return ScreenType.ultraTablet;
    }
  }
}

extension ResponsiveDoubleExtension on double {
  double responsive({
    double? tablet,
    double? ultraTablet,
  }) {
    return AppDimen.current.responsiveDimens(
      mobile: this,
      tablet: tablet,
      ultraTablet: ultraTablet,
    );
  }
}

enum ScreenType {
  mobile,
  tablet,
  ultraTablet,
}
