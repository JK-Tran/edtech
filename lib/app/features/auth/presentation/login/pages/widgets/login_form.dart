import 'package:edtech/app/components/button/outlined_button.dart';
import 'package:edtech/app/components/input/floating_label_input.dart';
import 'package:edtech/app/components/text/app_text.dart';
import 'package:edtech/app/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:edtech/app/features/auth/presentation/login/pages/widgets/login_button.dart';
import 'package:edtech/app/navigation/routes/routes.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/app_utils.dart';

import 'package:edtech/core/utils/context_utils.dart';
import 'package:edtech/core/utils/widget_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //AppText.h1(context.l10n.login),
        //context.gaps.gapH4,
        AppText.b1(
          context.l10n.login,
          fontSize: Dimens.d20,
          fontWeight: FontWeight.w500,
        ),
        context.gaps.gapH16,
        const _UsernameInput(),
        context.gaps.gapH16,
        const _PasswordInput(),
        context.gaps.gapH12,
        const _ErrorText(),
        context.gaps.gapH12,
        const LoginButton(),
        context.gaps.gapH12,
        _buildSocialLoginButtons(context),
      ],
    ).paddingAll(Dimens.d18);
  }
}

class _UsernameInput extends StatelessWidget {
  const _UsernameInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (LoginState previous, LoginState current) =>
          previous.email != current.email,
      builder: (context, state) {
        return FloatingLabelInput(
          labelText: context.l10n.email_or_phone_number,
          initialText: state.email,
          onChanged: (email) =>
              context.read<LoginBloc>().add(EmailChanged(email: email)),
          icon: Assets.icons.iconProfile.path,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.singleLineFormatter,
          ],
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.colorScheme.onSurface.withValues(alpha: 0.4),
            ),
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (LoginState previous, LoginState current) =>
          previous.password != current.password,
      builder: (BuildContext context, LoginState state) {
        return FloatingLabelInput(
          labelText: context.l10n.password,
          initialText: state.password,
          onChanged: (String password) => context
              .read<LoginBloc>()
              .add(PasswordChanged(password: password)),
          onSubmitted: (_) =>
              context.read<LoginBloc>().add(const LoginButtonPressed()),
          icon: Assets.icons.iconLock.path,
          showHiddenInput: () =>
              context.read<LoginBloc>().add(const ShowPassswordButtonPressed()),
          obscureText: state.obscureText,
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: const ColorPaletteData().neuTral80),
          ),
        );
      },
    );
  }
}

Widget _buildSocialLoginButtons(BuildContext context) {
  return Column(
    children: [
      // Divider với text "OR login with"
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.d16),
        child: Row(
          children: const [
            Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimens.d16),
              child: Text(
                'OR login with',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      context.gaps.gapH20,
      // Social login buttons
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.d16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppOutlinedButton(
              borderColor: AppColors.neuTralVariant80,
              foregroundColor: AppColors.neuTralVariant50,
              expandedWith: false,
              padding: const EdgeInsets.symmetric(horizontal: Dimens.d8),
              borderRadius: BorderRadius.circular(8),
              child: Assets.images.google.image(
                width: 30,
                height: 30,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
              onPressed: () {
                context
                    .read<LoginBloc>()
                    .add(const LoginWithGoogleButtonPressed());
              },
            ),
            context.gaps.gapW16,
            AppOutlinedButton(
              borderColor: AppColors.neuTralVariant80,
              foregroundColor: AppColors.neuTralVariant50,
              expandedWith: false,
              padding: const EdgeInsets.symmetric(horizontal: Dimens.d8),
              borderRadius: BorderRadius.circular(8),
              child: Assets.images.facebook.image(
                width: 30,
                height: 30,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ],
  );
}
// class _ErrorText extends StatelessWidget {
//   const _ErrorText();

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<LoginBloc, LoginState>(
//       buildWhen: (previous, current) =>
//           current.onPageError.isNotEmpty &&
//           previous.onPageError != current.onPageError,
//       builder: (context, state) {
//         if (state.onPageError.isEmpty) {
//           return Align(
//             alignment: Alignment.centerRight,
//             child: InkWell(
//               onTap: () => context.goRouter.pushNamed(Routes.forgotPassword),
//               child: AppText.b1(
//                 context.l10n.forgot_password,
//                 color: context.colorScheme.onSurface,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           );
//         }

//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             AppText.t1(
//               state.onPageError,
//               color: context.colorScheme.error,
//             ),
//             context.gaps.gapH8,
//             Align(
//               alignment: Alignment.centerRight,
//               child: InkWell(
//                 onTap: () => context.goRouter.pushNamed(Routes.forgotPassword),
//                 child: AppText.b1(
//                   context.l10n.forgot_password,
//                   color: context.colorScheme.onSurface,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
class _ErrorText extends StatelessWidget {
  const _ErrorText();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) =>
              current.onPageError.isNotEmpty &&
              previous.onPageError != current.onPageError,
          builder: (context, state) {
            if (state.onPageError.isEmpty) {
              return const SizedBox.shrink();
            }

            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.t1(
                    state.onPageError,
                    color: context.colorScheme.error,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () =>
                          context.goRouter.pushNamed(Routes.forgotPassword),
                      child: AppText.b1(
                        context.l10n.forgot_password,
                        color: context.colorScheme.onSurface,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ]);
          })
    ]);
  }
}
