// // ignore_for_file: always_specify_types

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get_it/get_it.dart';
// import 'package:shared/shared.dart';

// import '../app.dart';
// import '../features/features.dart';
// import 'bloc/base_cubit.dart';

// abstract class BaseCubitState<T extends StatefulWidget, C extends BaseCubit>
//     extends BasePageStateDelegate<T, C> with LogMixin {}

// abstract class BasePageStateDelegate<T extends StatefulWidget,
//     C extends BaseCubit> extends State<T> implements ExceptionHandlerListener {
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

//   late final C cubit = GetIt.instance.get<C>()
//     ..navigator = navigator
//     ..disposeBag = disposeBag
//     ..appBloc = appBloc
//     ..commonBloc = commonBloc
//     ..exceptionImageMapper = exceptionImageMapper
//     ..exceptionMessageMapper = exceptionMessageMapper;

//   late final DisposeBag disposeBag = DisposeBag();

//   bool get isAppWidget => false;

//   bool get isShowLoading => true;

//   @override
//   Widget build(BuildContext context) {
//     if (!isAppWidget) {
//       AppDimen.of(context);
//       ColorPaletteData.of(context);
//     }

//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (_) => cubit),
//         BlocProvider(create: (_) => commonBloc),
//       ],
//       child: BlocListener<CommonBloc, CommonState>(
//         listenWhen: (CommonState previous, CommonState current) =>
//             previous.appExceptionWrapper != current.appExceptionWrapper &&
//             current.appExceptionWrapper != null,
//         listener: (BuildContext context, CommonState state) {
//           handleException(state.appExceptionWrapper!);
//         },
//         child: buildPageListeners(
//           child: isAppWidget
//               ? buildPage(context)
//               : Stack(
//                   children: [
//                     buildPage(context),
//                     if (isShowLoading)
//                       BlocBuilder<CommonBloc, CommonState>(
//                         buildWhen:
//                             (CommonState previous, CommonState current) =>
//                                 previous.isLoading != current.isLoading,
//                         builder: (BuildContext context, CommonState state) =>
//                             Visibility(
//                           visible: state.isLoading,
//                           child: buildPageLoading(),
//                         ),
//                       ),
//                   ],
//                 ),
//         ),
//       ),
//     );
//   }

//   Widget buildPageListeners({required Widget child}) => child;

//   Widget buildPageLoading() => const LoadingIndicator();

//   Widget buildPage(BuildContext context);

//   @override
//   void dispose() {
//     super.dispose();
//     disposeBag.dispose();
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
//     return exceptionImageMapper.map(appException);
//   }

//   String handleExceptionMessage(AppException appException) {
//     return exceptionMessageMapper.map(appException);
//   }

//   @override
//   void onRefreshTokenFailed() {
//     commonBloc.add(const ForceLogoutButtonPressed());
//   }
// }
