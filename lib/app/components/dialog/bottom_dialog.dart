import 'package:edtech/app/components/app_icon.dart';
import 'package:edtech/core/navigation/app_navigator.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/utils/app_text.dart';
import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    required this.title,
    required this.child,
    required this.navigator,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.padding = const EdgeInsets.fromLTRB(16, 8, 16, 0),
    super.key,
  });
  final String title;
  final Widget child;
  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsets padding;
  final AppNavigator navigator;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: AppText.t0(
                  title,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Flexible(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                controller: PrimaryScrollController.of(context),
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: 24 +
                        (MediaQuery.of(context).viewInsets.bottom != 0
                            ? MediaQuery.of(context).viewInsets.bottom
                            : 0),
                  ),
                  child: Padding(
                    padding: padding,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        child,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 12,
          top: 12,
          child: InkWell(
            onTap: () => navigator.pop(false),
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: AppIcon(
                Assets.icons.iconClose,
                size: Dimens.d24,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
