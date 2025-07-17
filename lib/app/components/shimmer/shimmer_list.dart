import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/collection_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart' as s;

class ShimmerList extends StatelessWidget {
  const ShimmerList({
    super.key,
    this.isSingleItem = false,
    this.axisDirection = Axis.vertical,
    this.item,
  });

  final bool isSingleItem;
  final Axis axisDirection;
  final Widget? item;

  @override
  Widget build(BuildContext context) {
    return axisDirection == Axis.horizontal
        ? Container(
            margin: context.insets.v20,
            child: s.Shimmer.fromColors(
              baseColor: AppColors.table,
              highlightColor: AppColors.primary100,
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                // padding: context.insets.h16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List<Widget>.generate(
                    isSingleItem ? 1 : 5,
                    (int index) =>
                        item ??
                        Container(
                          height: context.width * 0.3,
                          width: context.width * 0.3,
                          decoration: BoxDecoration(
                            color: AppColors.table,
                            borderRadius: BorderRadius.circular(Dimens.d8),
                          ),
                        ),
                  ).applySeparator(separator: context.gaps.gapW16),
                ),
              ),
            ),
          )
        : Container(
            margin: context.insets.v20,
            child: s.Shimmer.fromColors(
              baseColor: AppColors.table,
              highlightColor: AppColors.primary100,
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                // padding: context.insets.h16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List<Widget>.generate(
                    isSingleItem ? 1 : 5,
                    (int index) =>
                        item ??
                        Container(
                          height: context.width * 0.3,
                          width: context.width,
                          decoration: BoxDecoration(
                            color: AppColors.table,
                            borderRadius: BorderRadius.circular(Dimens.d8),
                          ),
                        ),
                  ).applySeparator(separator: context.gaps.gapH16),
                ),
              ),
            ),
          );
  }
}
