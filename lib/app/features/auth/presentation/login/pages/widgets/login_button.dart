import 'package:edtech/app/components/button/elevated_button.dart';
import 'package:edtech/app/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.showLoginButtonLoading != current.showLoginButtonLoading ||
          previous.email != current.email ||
          previous.password != current.password,
      builder: (context, state) {
        final bool isEnabled = state.email.isNotEmpty &&
            state.password.isNotEmpty &&
            !state.showLoginButtonLoading;

        return Column(
          children: [
            AppElevatedButton(
              backgroundColor: AppColors.primary,
              height: Dimens.d64,
              onPressed: isEnabled
                  ? () =>
                      context.read<LoginBloc>().add(const LoginButtonPressed())
                  : null,
              isLoading: state.showLoginButtonLoading,
              borderRadius: BorderRadius.circular(Dimens.d12),
              child: Text(context.l10n.login),
            ),
          ],
        );
      },
    );
  }
}
