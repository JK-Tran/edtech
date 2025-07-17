import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';

extension ModalHelper on BuildContext {
  Future<T?> showDefaultModal<T>({
    required WidgetBuilder builder,
  }) {
    return showModalBottomSheet<T>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(sizes.p16),
          topRight: Radius.circular(sizes.p16),
        ),
      ),
      context: this,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: height * 0.8,
            maxWidth: width,
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                  child: Container(
                    height: sizes.p4,
                    width: sizes.p24,
                    margin: EdgeInsets.only(top: sizes.p12, bottom: sizes.p8),
                    decoration: BoxDecoration(
                      color: colorScheme.outline,
                      // set border width
                      borderRadius: BorderRadius.all(Radius.circular(sizes.p4)),
                    ),
                  ),
                ),
                Flexible(child: builder(context)),
              ],
            ),
          ),
        );
      },
    );
  }
}
