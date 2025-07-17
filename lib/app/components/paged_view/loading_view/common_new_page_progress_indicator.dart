import 'package:edtech/app/components/shimmer/shimmer_list.dart';
import 'package:flutter/material.dart';

class CommonNewPageProgressIndicator extends StatelessWidget {
  const CommonNewPageProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShimmerList(
      isSingleItem: true,
    );
  }
}
