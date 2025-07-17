import 'package:flutter/material.dart';

import '../../widget.dart';

class CommonNewPageErrorIndicator extends StatelessWidget {
  const CommonNewPageErrorIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: CustomErrorWidget(
        message: 'Có lỗi xảy ra xin hãy thử lại sau',
        textAlign: TextAlign.center,
      ),
    );
  }
}
