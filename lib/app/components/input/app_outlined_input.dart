import 'package:edtech/app/components/app_icon.dart';
import 'package:edtech/core/resource/generated/assets.gen.dart';
import 'package:edtech/core/utils/app_utils.dart';
import 'package:edtech/core/utils/context_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppOutlinedInput extends StatefulWidget {
  const AppOutlinedInput({
    required this.labelText,
    required this.onChanged,
    this.hintText,
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

  final SvgGenImage? icon;
  final String? hintText;
  final String labelText;
  final bool obscureText;
  final String? errorText;
  final VoidCallback? showHiddenInput;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final InputBorder? border;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<AppOutlinedInput> createState() => _AppOutlinedInputState();
}

class _AppOutlinedInputState extends State<AppOutlinedInput> {
  String textBeingTyped = '';
  bool showErrorTooltip = false;
  late bool obscureText;
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

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
    return Stack(
      clipBehavior: Clip.none,
      children: [
        TextField(
          focusNode: _focusNode,
          controller: _controller,
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
          cursorColor: context.colors.primary40,
          cursorRadius: const Radius.circular(29),
          decoration: InputDecoration(
            fillColor: context.colors.primary100,
            hintText: widget.hintText,
            errorText: inputIsFilled && inputIsInvalid && _focusNode.hasFocus
                ? widget.errorText
                : null,
            hintStyle: context.typo.titleSmall.copyWith(
                color: context.colors.primary40.withValues(alpha: 0.5)),
            label: widget.icon != null
                ? Row(
                    children: <Widget>[
                      AppIcon(widget.icon!, color: context.colors.neuTral80),
                      context.gaps.gapW12,
                      Text(
                        widget.labelText,
                        style: context.textTheme.titleSmall?.copyWith(
                          color: context.colors.neuTral80,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                : null,
            labelStyle: context.textTheme.headlineLarge,
            suffix: (widget.showHiddenInput != null)
                ? GestureDetector(
                    onTap: showHidenInput,
                    child: AppIcon(
                      obscureText
                          ? Assets.icons.iconEye
                          : Assets.icons.iconEyeSlash,
                      color: context.colors.neuTral80,
                    ),
                  )
                : null,
            border: widget.border,
            enabledBorder: widget.border,
          ),
        ),
      ],
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
