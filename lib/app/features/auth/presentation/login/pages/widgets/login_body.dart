import 'package:edtech/app/bloc/app_bloc.dart';
import 'package:edtech/app/components/app_icon.dart';
import 'package:edtech/app/components/button/text_button.dart';
import 'package:edtech/app/components/hotline_bottom_sheet.dart';
import 'package:edtech/app/features/auth/presentation/login/pages/widgets/auth_image.dart';
import 'package:edtech/app/features/auth/presentation/login/pages/widgets/login_form.dart';
import 'package:edtech/core/model/shared_enum.dart';
import 'package:edtech/core/navigation/app_navigator.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: context.isLandscape && context.isTablet
          ? Row(
              children: [
                Flexible(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: constraints.maxHeight,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              LoginForm(),
                              SizedBox(height: 24),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const AuthImage()
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildHotlineButton(context),
                        BlocBuilder<AppBloc, AppState>(
                          builder: (context, state) {
                            return Padding(
                              padding: const EdgeInsets.only(right: Dimens.d16),
                              child: TextButton.icon(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  textStyle:
                                      context.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: context.colorScheme.onSurface,
                                  ),
                                  backgroundColor: AppColors.transparent,
                                  minimumSize: Size.zero,
                                ),
                                onPressed: () {
                                  context.read<AppBloc>().add(
                                        AppLanguageChanged(state.languageCode ==
                                                LanguageCode.vi
                                            ? LanguageCode.en
                                            : LanguageCode.vi),
                                      );
                                },
                                label: Text(
                                  state.languageCode != LanguageCode.vi
                                      ? context.l10n.vietnamese
                                      : 'English',
                                  style: context.textTheme.bodyMedium?.copyWith(
                                    color: context.colorScheme.onSurface,
                                    fontSize: 18.sp,
                                  ),
                                ),
                                icon: AppIcon(
                                  state.languageCode != LanguageCode.vi
                                      ? Assets.icons.iconVietnam
                                      : Assets.icons.iconWorldWide,
                                  size: Dimens.d16,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    context.gaps.gapH28,
                    const AuthImage(),
                    context.gaps.gapH28,
                    const LoginForm(),
                    context.gaps.gapH20,
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildHotlineButton(BuildContext context) {
    return Center(
      child: AppTextButton(
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.2),
            shape: BoxShape.circle,
          ),
          child: AppIcon(
            Assets.icons.iconCall,
            size: Dimens.d24,
            color: AppColors.primary,
          ),
        ),
        onPressed: () {
          context.read<AppNavigator>().showModalBottomSheet(
                title: 'Hotline',
                child: const HotlineBottomSheet(),
              );
        },
      ),
    );
  }
}
