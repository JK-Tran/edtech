// import 'dart:async';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get_it/get_it.dart';
// import 'package:shared/shared.dart';

// import '../../app.dart';
// import '../../features/features.dart';

// abstract class BaseCubit<S extends BaseBlocState> extends BaseCubitDelegate<S>
//     with LogMixin {
//   BaseCubit(super.initialState);
// }

// abstract class BaseCubitDelegate<S extends BaseBlocState> extends Cubit<S> {
//   BaseCubitDelegate(super.initialState);

//   late final AppNavigator navigator;
//   late final AppBloc appBloc;
//   late final AuthBloc authBloc = GetIt.instance.get<AuthBloc>();
//   late final NotificationBloc notificationBloc =
//       GetIt.instance.get<NotificationBloc>();
//   late final ExceptionHandler exceptionHandler;
//   late final ExceptionMessageMapper exceptionMessageMapper;
//   late final ExceptionImageMapper exceptionImageMapper;
//   late final DisposeBag disposeBag;
//   late final CommonBloc _commonBloc;

//   set commonBloc(CommonBloc commonBloc) {
//     _commonBloc = commonBloc;
//   }

//   CommonBloc get commonBloc =>
//       this is CommonBloc ? this as CommonBloc : _commonBloc;

//   // @override
//   // void add(E event) {
//   //   if (!isClosed) {
//   //     super.add(event);
//   //   } else {
//   //     Log.e('Cannot add new event $event because $runtimeType was closed');
//   //   }
//   // }

//   Future<void> addException(AppExceptionWrapper appExceptionWrapper) async {
//     commonBloc.add(ExceptionEmitted(
//       appExceptionWrapper: appExceptionWrapper,
//     ));

//     return appExceptionWrapper.exceptionCompleter?.future;
//   }

//   void showLoading() {
//     commonBloc.add(const LoadingVisibilityEmitted(isLoading: true));
//   }

//   void hideLoading() {
//     commonBloc.add(const LoadingVisibilityEmitted(isLoading: false));
//   }

//   Future<void> runBlocCatching({
//     required Future<void> Function() action,
//     Future<void> Function()? doOnRetry,
//     Future<void> Function(AppException)? doOnError,
//     Future<void> Function()? doOnSubscribe,
//     Future<void> Function()? doOnSuccessOrError,
//     Future<void> Function()? doOnEventCompleted,
//     bool handleLoading = true,
//     bool handleError = true,
//     bool handleRetry = true,
//     bool Function(AppException)? forceHandleError,
//     String? overrideErrorMessage,
//   }) async {
//     Completer<void>? recursion;
//     try {
//       await doOnSubscribe?.call();
//       if (handleLoading) {
//         showLoading();
//       }

//       await action.call();

//       if (handleLoading) {
//         hideLoading();
//       }
//       await doOnSuccessOrError?.call();
//     } on AppException catch (e) {
//       if (handleLoading) {
//         hideLoading();
//       }
//       await doOnSuccessOrError?.call();
//       await doOnError?.call(e);

//       if (handleError || (forceHandleError?.call(e) ?? _forceHandleError(e))) {
//         await addException(AppExceptionWrapper(
//           appException: e,
//           doOnRetry: doOnRetry ??
//               (handleRetry
//                   ? () async {
//                       recursion = Completer();
//                       await runBlocCatching(
//                         action: action,
//                         doOnEventCompleted: doOnEventCompleted,
//                         doOnSubscribe: doOnSubscribe,
//                         doOnSuccessOrError: doOnSuccessOrError,
//                         doOnError: doOnError,
//                         doOnRetry: doOnRetry,
//                         forceHandleError: forceHandleError,
//                         handleError: handleError,
//                         handleLoading: handleLoading,
//                         handleRetry: handleRetry,
//                         overrideErrorMessage: overrideErrorMessage,
//                       );
//                       recursion?.complete();
//                     }
//                   : null),
//           exceptionCompleter: Completer<void>(),
//           overrideMessage: overrideErrorMessage,
//         ));
//       }
//     } finally {
//       await recursion?.future;
//       await doOnEventCompleted?.call();
//     }
//   }

//   bool _forceHandleError(AppException appException) {
//     return appException is RemoteException &&
//         (appException.kind == RemoteExceptionKind.refreshTokenFailed ||
//             appException.kind == RemoteExceptionKind.sessionExpired);
//   }
// }

// EventTransformer<Event> sequential<Event>() {
//   return (events, mapper) => events.asyncExpand(mapper);
// }
