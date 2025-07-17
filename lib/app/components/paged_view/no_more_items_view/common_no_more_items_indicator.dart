import 'package:flutter/material.dart';

class CommonNoMoreItemsIndicator extends StatelessWidget {
  const CommonNoMoreItemsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: AppText.l1(
    //     'Hết rồi',
    //     color: context.colorScheme.outline,
    //     fontWeight: FontWeight.w600,
    //   ).paddingOnly(
    //     bottom: Dimens.d12,
    //   ),
    // );
    return const SizedBox.shrink();
  }
}
