import 'package:edtech/core/helper/function/function.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popup_button.freezed.dart';

@freezed
class PopupButton with _$PopupButton {
  const factory PopupButton.base({
    String? text,
    Func0<void>? onPressed,
    Color? color,
    @Default(false) bool isDefault,
  }) = _BasePopupButton;

  const factory PopupButton.negative({
    String? text,
    Func0<void>? onPressed,
    Color? color,
  }) = _NegativePopupButton;

  const factory PopupButton.positive({
    String? text,
    Func0<void>? onPressed,
    Color? color,
  }) = _PositivePopupButton;

  const PopupButton._();
}
