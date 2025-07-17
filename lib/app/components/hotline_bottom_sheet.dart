import 'package:edtech/app/components/button/text_button.dart';
import 'package:edtech/app/config/di/di.dart';
import 'package:edtech/core/constants/ui/ui_constants.dart';
import 'package:edtech/core/navigation/app_navigator.dart';
import 'package:edtech/core/utils/app_text.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

class HotlineBottomSheet extends StatelessWidget {
  const HotlineBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText.t2(
          context.l10n.hotline_bottom_sheet_work_time,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        AppText.t1(
          UiConstants.hotlineUI,
          color: context.colorScheme.primary,
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppTextButton(
                child: Text(context.l10n.common__action__call_phone_number),
                onPressed: () {
                  getIt.get<AppNavigator>().pop(null);
                  IntentUtils.openBrowserURL(
                    url: 'tel://${UiConstants.hotline}',
                  );
                }),
            AppTextButton(
                child: const Text('Zalo'),
                onPressed: () {
                  getIt.get<AppNavigator>().pop(null);
                  IntentUtils.openBrowserURL(
                    url: 'https://zalo.me/4400299431909612030',
                  );
                }),
          ],
        )
      ],
    );
  }
}

class IntentUtils {
  static void openBrowserURL({required String url}) {}
}
