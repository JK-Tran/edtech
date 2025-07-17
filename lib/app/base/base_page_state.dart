import 'package:edtech/app/base/bloc/common/common_bloc.dart';
import 'package:edtech/app/base/bloc/common/common_event.dart';
import 'package:edtech/app/base/bloc/common/common_state.dart';
import 'package:edtech/app/bloc/app_bloc.dart';
import 'package:edtech/app/components/progress/loading_indicator.dart';
import 'package:edtech/app/exception_handler/exception_handler.dart';
import 'package:edtech/app/exception_handler/exception_image_mapper.dart';
import 'package:edtech/app/exception_handler/exception_message_mapper.dart';
import 'package:edtech/app/features/auth/bloc/auth_bloc.dart';
import 'package:edtech/core/exception/base/app_exception.dart';
import 'package:edtech/core/exception/base/app_exception_wrapper.dart';
import 'package:edtech/core/helper/stream/dispose_bag.dart';
import 'package:edtech/core/mixin/log_mixin.dart';
import 'package:edtech/core/navigation/app_navigator.dart';
import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'bloc/base_bloc.dart';

// abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc>
//     extends BasePageStateDelegate<T, B> with LogMixin {}

// abstract class BasePageStateDelegate<T extends StatefulWidget,
//     B extends BaseBloc> extends State<T> implements ExceptionHandlerListener {
//   late final AppNavigator navigator = GetIt.instance.get<AppNavigator>();
//   late final AppBloc appBloc = GetIt.instance.get<AppBloc>();
//   late final AuthBloc authBloc = GetIt.instance.get<AuthBloc>();

//   late final ExceptionMessageMapper exceptionMessageMapper =
//       const ExceptionMessageMapper();
//   late final ExceptionImageMapper exceptionImageMapper =
//       const ExceptionImageMapper();
//   late final ExceptionHandler exceptionHandler = ExceptionHandler(
//     navigator: navigator,
//     listener: this,
//   );

//   late final CommonBloc commonBloc = GetIt.instance.get<CommonBloc>()
//     ..navigator = navigator
//     ..disposeBag = disposeBag
//     ..appBloc = appBloc
//     ..exceptionImageMapper = exceptionImageMapper
//     ..exceptionMessageMapper = exceptionMessageMapper;

//   late final B bloc = GetIt.instance.get<B>();
//     ..navigator = navigator
//     ..disposeBag = disposeBag
//     ..appBloc = appBloc
//     ..commonBloc = commonBloc
//     ..exceptionImageMapper = exceptionImageMapper
//     ..exceptionMessageMapper = exceptionMessageMapper;

//   @override
//   void initState() {
//     super.initState();
//     _initializeBlocs();
//   }

//   void _initializeBlocs() {
//     bloc.commonBloc = commonBloc;
//   }

//   bool get isAppWidget => false;

//   bool get isShowLoading => true;

//   @override
//   Widget build(BuildContext context) {
//     if (!isAppWidget) {
//       AppDimen.of(context);
//       ColorPaletteData.of(context);
//     }

//     return Provider(
//         create: (context) => navigator,
//         child: MultiBlocProvider(
//           providers: [
//             BlocProvider(create: (_) => bloc),
//             BlocProvider(create: (_) => commonBloc),
//           ],
//           child: BlocListener<CommonBloc, CommonState>(
//             listenWhen: (CommonState previous, CommonState current) =>
//                 previous.appExceptionWrapper != current.appExceptionWrapper &&
//                 current.appExceptionWrapper != null,
//             listener: (BuildContext context, CommonState state) {
//               handleException(state.appExceptionWrapper!);
//             },
//             child: buildPageListeners(
//               child: isAppWidget
//                   ? buildPage(context)
//                   : Stack(
//                       children: [
//                         buildPage(context),
//                         if (isShowLoading)
//                           BlocBuilder<CommonBloc, CommonState>(
//                             buildWhen:
//                                 (CommonState previous, CommonState current) =>
//                                     previous.isLoading != current.isLoading,
//                             builder:
//                                 (BuildContext context, CommonState state) =>
//                                     Visibility(
//                               visible: state.isLoading,
//                               child: buildPageLoading(),
//                             ),
//                           ),
//                       ],
//                     ),
//             ),
//           ),
//         ));
//   }

//   Widget buildPageListeners({required Widget child}) => child;

//   Widget buildPageLoading() => const LoadingIndicator();

//   Widget buildPage(BuildContext context);

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   void handleException(AppExceptionWrapper appExceptionWrapper) {
//     exceptionHandler
//         .handleException(
//       appExceptionWrapper,
//       handleExceptionMessage(appExceptionWrapper.appException),
//       handleExceptionImage(appExceptionWrapper.appException),
//     )
//         .then((value) {
//       appExceptionWrapper.exceptionCompleter?.complete();
//     });
//   }

//   String handleExceptionImage(AppException appException) {
//     return bloc.exceptionImageMapper.map(appException);
//   }

//   String handleExceptionMessage(AppException appException) {
//     return bloc.exceptionMessageMapper.map(appException);
//   }

//   @override
//   void onRefreshTokenFailed() {
//     commonBloc.add(const ForceLogoutButtonPressed());
//   }

//   void onException(AppException appException) {
//     final message = bloc.exceptionMessageMapper.map(appException);
//     final image = bloc.exceptionImageMapper.map(appException);
//     exceptionHandler.handleException(
//       AppExceptionWrapper(appException: appException),
//       message,
//       image,
//     );
//   }
// }

// ignore_for_file: always_specify_types

abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc>
    extends BasePageStateDelegate<T, B> with LogMixin {}

abstract class BasePageStateDelegate<T extends StatefulWidget,
    B extends BaseBloc> extends State<T> implements ExceptionHandlerListener {
  late final AppNavigator navigator = GetIt.instance.get<AppNavigator>();
  late final AppBloc appBloc = GetIt.instance.get<AppBloc>();
  late final AuthBloc authBloc = GetIt.instance.get<AuthBloc>();

  late final ExceptionMessageMapper exceptionMessageMapper =
      const ExceptionMessageMapper();
  late final ExceptionImageMapper exceptionImageMapper =
      const ExceptionImageMapper();
  late final ExceptionHandler exceptionHandler = ExceptionHandler(
    navigator: navigator,
    listener: this,
  );

  late final CommonBloc commonBloc = GetIt.instance.get<CommonBloc>()
    ..navigator = navigator
    ..disposeBag = disposeBag
    ..appBloc = appBloc
    ..exceptionImageMapper = exceptionImageMapper
    ..exceptionMessageMapper = exceptionMessageMapper;

  late final B bloc = GetIt.instance.get<B>()
    ..navigator = navigator
    ..disposeBag = disposeBag
    ..appBloc = appBloc
    ..commonBloc = commonBloc
    ..exceptionImageMapper = exceptionImageMapper
    ..exceptionMessageMapper = exceptionMessageMapper;

  late final DisposeBag disposeBag = DisposeBag();

  bool get isAppWidget => false;

  bool get isShowLoading => true;

  @override
  Widget build(BuildContext context) {
    if (!isAppWidget) {
      AppDimen.of(context);
      ColorPaletteData.of(context);
    }

    return Provider(
        create: (context) => navigator,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => bloc),
            BlocProvider(create: (_) => commonBloc),
          ],
          child: BlocListener<CommonBloc, CommonState>(
            listenWhen: (CommonState previous, CommonState current) =>
                previous.appExceptionWrapper != current.appExceptionWrapper &&
                current.appExceptionWrapper != null,
            listener: (BuildContext context, CommonState state) {
              handleException(state.appExceptionWrapper!);
            },
            child: buildPageListeners(
              child: isAppWidget
                  ? buildPage(context)
                  : Stack(
                      children: [
                        buildPage(context),
                        if (isShowLoading)
                          BlocBuilder<CommonBloc, CommonState>(
                            buildWhen:
                                (CommonState previous, CommonState current) =>
                                    previous.isLoading != current.isLoading,
                            builder:
                                (BuildContext context, CommonState state) =>
                                    Visibility(
                              visible: state.isLoading,
                              child: buildPageLoading(),
                            ),
                          ),
                      ],
                    ),
            ),
          ),
        ));
  }

  Widget buildPageListeners({required Widget child}) => child;

  Widget buildPageLoading() => const LoadingIndicator();

  Widget buildPage(BuildContext context);

  @override
  void dispose() {
    super.dispose();
    disposeBag.dispose();
  }

  void handleException(AppExceptionWrapper appExceptionWrapper) {
    exceptionHandler
        .handleException(
      appExceptionWrapper,
      handleExceptionMessage(appExceptionWrapper.appException),
      handleExceptionImage(appExceptionWrapper.appException),
    )
        .then((value) {
      appExceptionWrapper.exceptionCompleter?.complete();
    });
  }

  String handleExceptionImage(AppException appException) {
    return exceptionImageMapper.map(appException);
  }

  String handleExceptionMessage(AppException appException) {
    return exceptionMessageMapper.map(appException);
  }

  @override
  void onRefreshTokenFailed() {
    commonBloc.add(const ForceLogoutButtonPressed());
  }
}
