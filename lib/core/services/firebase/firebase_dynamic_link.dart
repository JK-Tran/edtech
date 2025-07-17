// import 'dart:developer' as dev;

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
// import 'package:flutter/foundation.dart';

// class AntoreeDynamicLink {
//   const AntoreeDynamicLink._();

//   /// Singleton instance of AntoreeDynamicLink Helper
//   static AntoreeDynamicLink? _instance;

//   static FirebaseDynamicLinks? _dynamicLinks;

//   /// Get instance of this class
//   static AntoreeDynamicLink get instance =>
//       _instance ??= const AntoreeDynamicLink._();

//   static Future<void> initialize() async {
//     _dynamicLinks ??= FirebaseDynamicLinks.instance;
//   }

//   /// Exact Dynamic Link was used to open the application
//   Future<PendingDynamicLinkData?> getInitialLink() async {
//     final PendingDynamicLinkData? dynamicLink =
//         await _dynamicLinks!.getInitialLink();
//     _logDynamicLink(dynamicLink: dynamicLink);

//     return dynamicLink;
//   }

//   /// Creates a Dynamic Link from the parameters.
//   Future<Uri> createLink({
//     required String uri,
//     required String uriPrefix,
//     bool shorLink = false,
//   }) async {
//     final DynamicLinkParameters dynamicLinkParams = DynamicLinkParameters(
//       link: Uri.parse(uri),
//       uriPrefix: uriPrefix,
//       androidParameters:
//           const AndroidParameters(packageName: 'com.antoree.mama'),
//       iosParameters:
//           IOSParameters(bundleId: Firebase.app().options.iosBundleId!),
//     );

//     if (shorLink) {
//       final ShortDynamicLink shortDynamicLink =
//           await _dynamicLinks!.buildShortLink(dynamicLinkParams);
//       _logDynamicLink(dynamicLink: shortDynamicLink);

//       return shortDynamicLink.shortUrl;
//     }

//     final Uri link = await _dynamicLinks!.buildLink(dynamicLinkParams);
//     _logDynamicLink(dynamicLink: link);

//     return link;
//   }

//   /// Exact Dynamic Link was used to open the application
//   Future<PendingDynamicLinkData?> getDynamicLink(String link) async {
//     final PendingDynamicLinkData? dynamicLink =
//         await _dynamicLinks!.getDynamicLink(Uri.parse(link));
//     _logDynamicLink(dynamicLink: dynamicLink);

//     return dynamicLink;
//   }

//   void _logDynamicLink({required Object? dynamicLink}) {
//     if (kDebugMode) {
//       dev.log(name: '$runtimeType', '\x1B[35m $dynamicLink');
//     }
//   }
// }
