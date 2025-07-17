import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/utils/app_text.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/widget_utils.dart';
import 'package:flutter/material.dart';

class StatusTag extends StatelessWidget {
  const StatusTag(
    this.text,
    this.color, {
    super.key,
    this.style,
    this.expanded = false,
  });

  final String text;
  final TextStyle? style;
  final Color color;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: Dimens.d12,
          width: Dimens.d12,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ).paddingAll(Dimens.d4),
        context.gaps.gapW16,
        Flexible(
          child: AppText.b1(
            text,
          ).copyWith(style: style),
        ),
      ],
    );
  }
}
