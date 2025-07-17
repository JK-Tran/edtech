import 'package:edtech/app/components/app_icon.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:edtech/core/utils/widget_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    required this.hintText,
    required this.onChanged,
    this.onSubmitted,
    this.initialText,
    this.errorText,
    this.icon,
    this.obscureText = false,
    this.showHiddenInput,
    this.keyboardType,
    this.textInputAction,
    this.border,
    this.style,
    this.inputFormatters,
    this.iconPadding,
    this.contentPadding,
    this.prefixIconConstraints,
    super.key,
  });

  final Widget? icon;
  final String hintText;
  final String? initialText;
  final bool obscureText;
  final String? errorText;
  final VoidCallback? showHiddenInput;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final InputBorder? border;
  final TextStyle? style;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsets? iconPadding;
  final EdgeInsets? contentPadding;
  final BoxConstraints? prefixIconConstraints;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  late String textBeingTyped;
  late bool obscureText;
  bool showErrorTooltip = false;
  final FocusNode _focusNode = FocusNode();

  bool get inputIsFilled => textBeingTyped.isNotEmpty;
  bool get inputIsInvalid => widget.errorText != null;

  @override
  void initState() {
    textBeingTyped = widget.initialText ?? '';
    obscureText = widget.obscureText;
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      initialValue: textBeingTyped,
      onFieldSubmitted: widget.onSubmitted,
      onChanged: (String str) {
        if (widget.onChanged != null) {
          widget.onChanged!(str);
        }

        _remember(str);
      },
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      textInputAction: widget.textInputAction,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: widget.iconPadding ?? const EdgeInsets.all(Dimens.d12),
          child: widget.icon,
        ),
        contentPadding: widget.contentPadding,
        prefixIconConstraints: widget.prefixIconConstraints,
        fillColor: context.colors.primary40,
        hintText: widget.hintText,
        errorText: inputIsFilled && inputIsInvalid && _focusNode.hasFocus
            ? widget.errorText
            : null,
        hintStyle: context.typo.titleMedium
            .copyWith(color: context.colors.neuTralVariant50),
        suffix: (widget.showHiddenInput != null)
            ? GestureDetector(
                onTap: showHidenInput,
                child: AppIcon(
                  obscureText
                      ? Assets.icons.iconEye
                      : Assets.icons.iconEyeSlash,
                  color: AppColors.neuTral80,
                ),
              ).paddingOnly(right: 16)
            : null,
        border: widget.border,
        enabledBorder: widget.border,
      ),
      style: widget.style ?? context.typo.titleLarge,
      cursorColor: context.colorScheme.primary,
    );
  }

  void showHidenInput() {
    setState(() => obscureText = !obscureText);
    if (widget.showHiddenInput != null) {
      widget.showHiddenInput!();
    }
  }

  void _remember(String text) {
    setState(() {
      textBeingTyped = text;
    });
  }

  void _onFocusChange() {
    setState(() {
      showErrorTooltip = !_focusNode.hasFocus;
    });
  }
}
