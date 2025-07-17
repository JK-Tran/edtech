import 'package:edtech/core/resource/dimens/app_dimen.dart';
import 'package:edtech/core/resource/dimens/dimens.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/resource/theme/data/color_palette_data.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class FloatingLabelInput extends StatefulWidget {
  const FloatingLabelInput({
    required this.labelText,
    required this.onChanged,
    this.initialText,
    this.hintText,
    this.onSubmitted,
    this.errorText,
    this.icon,
    this.obscureText = false,
    this.showHiddenInput,
    this.keyboardType,
    this.textInputAction,
    this.border,
    this.inputFormatters,
    super.key,
  });

  final String? icon;
  final String? hintText;
  final String? initialText;
  final String labelText;
  final bool obscureText;
  final String? errorText;
  final VoidCallback? showHiddenInput;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final InputBorder? border;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<FloatingLabelInput> createState() => _FloatingLabelInputState();
}

class _FloatingLabelInputState extends State<FloatingLabelInput> {
  String textBeingTyped = '';
  bool showErrorTooltip = false;
  late bool obscureText;
  final FocusNode _focusNode = FocusNode();

  bool get inputIsFilled => textBeingTyped.isNotEmpty;
  bool get inputIsInvalid => widget.errorText != null;

  @override
  void initState() {
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
      initialValue: widget.initialText,
      onFieldSubmitted: widget.onSubmitted,
      onChanged: (String str) {
        if (widget.onChanged != null) {
          widget.onChanged!(str);
        }
        _remember(str);
      },
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      obscureText: obscureText,
      obscuringCharacter: '*',
      textInputAction: widget.textInputAction,
      style: context.textTheme.bodyLarge,
      cursorColor: context.colorScheme.primary,
      cursorRadius: const Radius.circular(Dimens.d29),
      decoration: InputDecoration(
        fillColor: context.colorScheme.surface,
        hintText: widget.hintText,
        errorText: inputIsFilled && inputIsInvalid ? widget.errorText : null,
        errorMaxLines: 3,
        hintStyle: context.textTheme.titleSmall!.copyWith(
          color: context.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
        ),
        prefixIcon: widget.icon != null
            ? Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Dimens.d12.responsive()),
                child: SvgPicture.asset(
                  widget.icon!,
                  colorFilter: ColorFilter.mode(
                    _focusNode.hasFocus
                        ? AppColors.neuTral20
                        : AppColors.neuTral80,
                    BlendMode.srcIn,
                  ),
                ))
            : null,
        labelText: widget.labelText,
        labelStyle: context.textTheme.titleSmall?.copyWith(
          color:
              _focusNode.hasFocus ? AppColors.neuTral20 : AppColors.neuTral80,
          fontWeight: FontWeight.w500,
        ),
        suffix: (widget.showHiddenInput != null)
            ? GestureDetector(
                onTap: showHidenInput,
                child: obscureText
                    ? Assets.icons.iconEyeSlash.svg(color: AppColors.neuTral80)
                    : Assets.icons.iconEye.svg(color: AppColors.neuTral80),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: context.colorScheme.onSurface.withValues(alpha: 0.3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: context.colorScheme.onSurface.withValues(alpha: 0.3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: context.colorScheme.primary,
            width: 2,
          ),
        ),
      ),
    );
  }

  void showHidenInput() {
    setState(() => obscureText = !obscureText);
    if (widget.showHiddenInput != null) {
      widget.showHiddenInput!();
    }
  }

  void _remember(String text) {
    setState(
      () {
        textBeingTyped = text;
      },
    );
  }

  void _onFocusChange() {
    setState(() {
      showErrorTooltip = !_focusNode.hasFocus;
    });
  }
}
