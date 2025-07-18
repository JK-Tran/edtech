// ignore_for_file: avoid_hardcoded_colors
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

enum TrimMode {
  length,
  line,
}

class ReadMoreText extends StatefulWidget {
  const ReadMoreText(
    this.data, {
    super.key,
    this.preDataText,
    this.postDataText,
    this.preDataTextStyle,
    this.postDataTextStyle,
    this.trimExpandedText = 'show less',
    this.trimCollapsedText = 'read more',
    this.colorClickableText,
    this.trimLength = 240,
    this.trimLines = 2,
    this.trimMode = TrimMode.length,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.textScaler,
    this.semanticsLabel,
    this.moreStyle,
    this.lessStyle,
    this.delimiter = '$_kEllipsis ',
    this.delimiterStyle,
    this.callback,
    this.onLinkPressed,
    this.linkTextStyle,
  });

  /// Used on TrimMode.Length
  final int trimLength;

  /// Used on TrimMode.Lines
  final int trimLines;

  /// Determines the type of trim. TrimMode.Length takes into account
  /// the number of letters, while TrimMode.Lines takes into account
  /// the number of lines
  final TrimMode trimMode;

  /// TextStyle for expanded text
  final TextStyle? moreStyle;

  /// TextStyle for compressed text
  final TextStyle? lessStyle;

  /// Textspan used before the data any heading or somthing
  final String? preDataText;

  /// Textspan used after the data end or before the more/less
  final String? postDataText;

  /// Textspan used before the data any heading or somthing
  final TextStyle? preDataTextStyle;

  /// Textspan used after the data end or before the more/less
  final TextStyle? postDataTextStyle;

  ///Called when state change between expanded/compress
  final Function(bool val)? callback;

  final ValueChanged<String>? onLinkPressed;

  final TextStyle? linkTextStyle;

  final String delimiter;
  final String data;
  final String trimExpandedText;
  final String trimCollapsedText;
  final Color? colorClickableText;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final TextScaler? textScaler;
  final String? semanticsLabel;
  final TextStyle? delimiterStyle;

  @override
  ReadMoreTextState createState() => ReadMoreTextState();
}

const String _kEllipsis = '\u2026';

const String _kLineSeparator = '\u2028';

class ReadMoreTextState extends State<ReadMoreText> {
  bool _readMore = true;

  void _onTapLink() {
    setState(() {
      _readMore = !_readMore;
      widget.callback?.call(_readMore);
    });
  }

  @override
  Widget build(BuildContext context) {
    final DefaultTextStyle defaultTextStyle = DefaultTextStyle.of(context);
    TextStyle? effectiveTextStyle = widget.style;
    if (widget.style?.inherit ?? false) {
      effectiveTextStyle = defaultTextStyle.style.merge(widget.style);
    }

    final textAlign =
        widget.textAlign ?? defaultTextStyle.textAlign ?? TextAlign.start;
    final textDirection = widget.textDirection ?? Directionality.of(context);
    final textScaler = widget.textScaler ?? MediaQuery.textScalerOf(context);
    final overflow = defaultTextStyle.overflow;
    final locale = widget.locale ?? Localizations.maybeLocaleOf(context);

    final colorClickableText =
        widget.colorClickableText ?? Theme.of(context).colorScheme.secondary;
    final defaultLessStyle = widget.lessStyle ??
        effectiveTextStyle?.copyWith(color: colorClickableText);
    final defaultMoreStyle = widget.moreStyle ??
        effectiveTextStyle?.copyWith(color: colorClickableText);
    final defaultDelimiterStyle = widget.delimiterStyle ?? effectiveTextStyle;

    final TextSpan link = TextSpan(
      text: _readMore ? widget.trimCollapsedText : widget.trimExpandedText,
      style: _readMore ? defaultMoreStyle : defaultLessStyle,
      recognizer: TapGestureRecognizer()..onTap = _onTapLink,
    );

    final TextSpan delimiter = TextSpan(
      text: _readMore
          ? widget.trimCollapsedText.isNotEmpty
              ? widget.delimiter
              : ''
          : '',
      style: defaultDelimiterStyle,
      recognizer: TapGestureRecognizer()..onTap = _onTapLink,
    );

    Widget result = LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        assert(constraints.hasBoundedWidth);
        final double maxWidth = constraints.maxWidth;

        TextSpan? preTextSpan;
        TextSpan? postTextSpan;
        if (widget.preDataText != null) {
          preTextSpan = TextSpan(
            text: '${widget.preDataText!} ',
            style: widget.preDataTextStyle ?? effectiveTextStyle,
          );
        }
        if (widget.postDataText != null) {
          postTextSpan = TextSpan(
            text: ' ${widget.postDataText!}',
            style: widget.postDataTextStyle ?? effectiveTextStyle,
          );
        }

        // Create a TextSpan with data
        final text = TextSpan(
          children: [
            if (preTextSpan != null) preTextSpan,
            TextSpan(text: widget.data, style: effectiveTextStyle),
            if (postTextSpan != null) postTextSpan,
          ],
        );

        // Layout and measure link
        final TextPainter textPainter = TextPainter(
          text: link,
          textAlign: textAlign,
          textDirection: textDirection,
          textScaler: textScaler,
          maxLines: widget.trimLines,
          ellipsis: overflow == TextOverflow.ellipsis ? widget.delimiter : null,
          locale: locale,
        );
        textPainter.layout(maxWidth: maxWidth);
        final linkSize = textPainter.size;

        // Layout and measure delimiter
        textPainter.text = delimiter;
        textPainter.layout(maxWidth: maxWidth);
        final delimiterSize = textPainter.size;

        // Layout and measure text
        textPainter.text = text;
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final textSize = textPainter.size;

        // Get the endIndex of data
        bool linkLongerThanLine = false;
        int endIndex;

        if (linkSize.width < maxWidth) {
          final readMoreSize = linkSize.width + delimiterSize.width;
          final pos = textPainter.getPositionForOffset(Offset(
            textDirection == TextDirection.rtl
                ? readMoreSize
                : textSize.width - readMoreSize,
            textSize.height,
          ));
          endIndex = textPainter.getOffsetBefore(pos.offset) ?? 0;
        } else {
          final pos = textPainter.getPositionForOffset(
            textSize.bottomLeft(Offset.zero),
          );
          endIndex = pos.offset;
          linkLongerThanLine = true;
        }

        TextSpan textSpan;
        switch (widget.trimMode) {
          case TrimMode.length:
            textSpan = widget.trimLength < widget.data.length
                ? _buildData(
                    data: _readMore
                        ? widget.data.substring(0, widget.trimLength)
                        : widget.data,
                    textStyle: effectiveTextStyle,
                    linkTextStyle: effectiveTextStyle?.copyWith(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                    onPressed: widget.onLinkPressed,
                    children: [delimiter, link],
                  )
                : _buildData(
                    data: widget.data,
                    textStyle: effectiveTextStyle,
                    linkTextStyle: effectiveTextStyle?.copyWith(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                    onPressed: widget.onLinkPressed,
                    children: [],
                  );
            break;
          case TrimMode.line:
            textSpan = textPainter.didExceedMaxLines
                ? _buildData(
                    data: _readMore
                        ? widget.data.substring(0, endIndex) +
                            (linkLongerThanLine ? _kLineSeparator : '')
                        : widget.data,
                    textStyle: effectiveTextStyle,
                    linkTextStyle: effectiveTextStyle?.copyWith(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                    onPressed: widget.onLinkPressed,
                    children: [delimiter, link],
                  )
                : _buildData(
                    data: widget.data,
                    textStyle: effectiveTextStyle,
                    linkTextStyle: effectiveTextStyle?.copyWith(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    ),
                    onPressed: widget.onLinkPressed,
                    children: [],
                  );
            break;

          // default:
          //   throw Exception(
          //       'TrimMode type: ${widget.trimMode} is not supported');
        }

        return Text.rich(
          TextSpan(
            children: [
              if (preTextSpan != null) preTextSpan,
              textSpan,
              if (postTextSpan != null) postTextSpan,
            ],
          ),
          textAlign: textAlign,
          textDirection: textDirection,
          softWrap: true,
          overflow: TextOverflow.clip,
          textScaler: textScaler,
        );
      },
    );
    if (widget.semanticsLabel != null) {
      result = Semantics(
        textDirection: widget.textDirection,
        label: widget.semanticsLabel,
        child: ExcludeSemantics(
          child: result,
        ),
      );
    }

    return result;
  }

  TextSpan _buildData({
    required String data,
    required List<TextSpan> children,
    TextStyle? textStyle,
    TextStyle? linkTextStyle,
    ValueChanged<String>? onPressed,
  }) {
    final RegExp exp =
        RegExp(r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+');

    final List<TextSpan> contents = [];

    while (exp.hasMatch(data)) {
      final match = exp.firstMatch(data);

      final firstTextPart = data.substring(0, match!.start);
      final linkTextPart = data.substring(match.start, match.end);

      contents.add(
        TextSpan(
          text: firstTextPart,
        ),
      );
      contents.add(
        TextSpan(
          text: linkTextPart,
          style: linkTextStyle,
          recognizer: TapGestureRecognizer()
            ..onTap = () => onPressed?.call(
                  linkTextPart.trim(),
                ),
        ),
      );
      data = data.substring(match.end, data.length);
    }
    contents.add(
      TextSpan(
        text: data,
      ),
    );

    return TextSpan(
      children: contents..addAll(children),
      style: textStyle,
    );
  }
}
