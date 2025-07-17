import 'package:flutter/material.dart';

class StringUtils {
  const StringUtils._();
  static bool isNullOrBlank(String? s) => s == null || s == '' || s == ' ';

  static bool hasMatch(String? value, String pattern) {
    return value != null && RegExp(pattern).hasMatch(value);
  }

  /// Capitalize each word inside string
  /// Example: your name => Your Name, your name => Your name
  static String capitalize(String? s) {
    if (isNullOrBlank(s)) {
      return '';
    }

    return s!.split(' ').map(capitalizeFirst).join(' ');
  }

  /// Uppercase first letter inside string and let the others lowercase
  /// Example: your name => Your name
  static String capitalizeFirst(String? s) {
    if (isNullOrBlank(s)) {
      return '';
    }

    return s![0].toUpperCase() + s.substring(1).toLowerCase();
  }

  /// Remove all whitespace inside string
  /// Example: your name => yourname
  static String removeAllWhitespace(String? s) {
    if (isNullOrBlank(s)) {
      return '';
    }

    return s!.replaceAll(' ', '');
  }

  /// Camelcase string
  /// Example: your name => yourName
  static String camelCase(String value) {
    final List<String> separatedWords =
        value.split(RegExp(r'[!@#<>?":`~;[\]\\|=+)(*&^%-\s_]+'));
    String newString = '';

    for (final String word in separatedWords) {
      newString += word[0].toUpperCase() + word.substring(1).toLowerCase();
    }

    return newString[0].toLowerCase() + newString.substring(1);
  }

  /// Checks if string consist only numeric.
  /// Numeric only doesn't accepting "." which double data type have
  static bool isNumericOnly(String s) => hasMatch(s, r'^\d+$');

  /// Checks if string consist only Alphabet. (No Whitespace)
  static bool isAlphabetOnly(String s) => hasMatch(s, r'^[a-zA-Z]+$');

  /// Checks if string contains at least one Capital Letter
  static bool hasCapitalletter(String s) => hasMatch(s, r'[A-Z]');

  /// Checks if string is an video file.
  static bool isVideo(String filePath) {
    final String ext = filePath.toLowerCase();

    return ext.endsWith('.mp4') ||
        ext.endsWith('.avi') ||
        ext.endsWith('.wmv') ||
        ext.endsWith('.rmvb') ||
        ext.endsWith('.mpg') ||
        ext.endsWith('.mpeg') ||
        ext.endsWith('.3gp');
  }

  /// Checks if string is an image file.
  static bool isImage(String filePath) {
    final String ext = filePath.toLowerCase();

    return ext.endsWith('.jpg') ||
        ext.endsWith('.jpeg') ||
        ext.endsWith('.png') ||
        ext.endsWith('.gif') ||
        ext.endsWith('.bmp');
  }

  /// Checks if string is an audio file.
  static bool isAudio(String filePath) {
    final String ext = filePath.toLowerCase();

    return ext.endsWith('.mp3') ||
        ext.endsWith('.wav') ||
        ext.endsWith('.wma') ||
        ext.endsWith('.amr') ||
        ext.endsWith('.ogg');
  }

  /// Checks if string is an powerpoint file.
  static bool isPPT(String filePath) {
    final String ext = filePath.toLowerCase();

    return ext.endsWith('.ppt') || ext.endsWith('.pptx');
  }

  /// Checks if string is an word file.
  static bool isWord(String filePath) {
    final String ext = filePath.toLowerCase();

    return ext.endsWith('.doc') || ext.endsWith('.docx');
  }

  /// Checks if string is an excel file.
  static bool isExcel(String filePath) {
    final String ext = filePath.toLowerCase();

    return ext.endsWith('.xls') || ext.endsWith('.xlsx');
  }

  /// Checks if string is an pdf file.
  static bool isPDF(String filePath) {
    return filePath.toLowerCase().endsWith('.pdf');
  }

  /// Checks if string is an txt file.
  static bool isTxt(String filePath) {
    return filePath.toLowerCase().endsWith('.txt');
  }

  /// Checks if string is a vector file.
  static bool isVector(String filePath) {
    return filePath.toLowerCase().endsWith('.svg');
  }

  /// Checks if string is an html file.
  static bool isHTML(String filePath) {
    return filePath.toLowerCase().endsWith('.html');
  }

  /// Checks if string is a valid username.
  static bool isUsername(String s) =>
      hasMatch(s, r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$');

  /// Checks if string is URL.
  static bool isURL(String s) => hasMatch(
        s,
        r"^((((H|h)(T|t)|(F|f))(T|t)(P|p)((S|s)?))\://)?(www.|[a-zA-Z0-9].)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,6}(\:[0-9]{1,5})*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&amp;%\$#\=~_\-]+))*$",
      );

  /// Checks if string is email.
  static bool isEmail(String s) => hasMatch(
        s,
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
      );

  /// Checks if string is phone number.
  static bool isPhoneNumber(String s) {
    if (s.length > 16 || s.length < 9) {
      return false;
    }

    return hasMatch(s, r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
  }

  /// Checks if string is DateTime (UTC or Iso8601).
  static bool isDateTime(String s) =>
      hasMatch(s, r'^\d{4}-\d{2}-\d{2}[ T]\d{2}:\d{2}:\d{2}.\d{3}Z?$');

  /// Extract numeric value of string
  /// Example: OTP 12312 27/04/2020 => 1231227042020ß
  /// If firstword only is true, then the example return is "12312"
  /// (first found numeric word)
  static String numericOnly(String s, {bool firstWordOnly = false}) {
    String numericOnlyStr = '';

    for (int index = 0; index < s.length; index++) {
      if (isNumericOnly(s[index])) {
        numericOnlyStr += s[index];
      }
      if (firstWordOnly && numericOnlyStr.isNotEmpty && s[index] == ' ') {
        break;
      }
    }

    return numericOnlyStr;
  }
}

extension NullableStringExtension on String? {
  String get covertToString => this ?? '';

  /// Capitalize each word inside string
  /// Example: your name => Your Name, your name => Your name
  String get capitalizeFirst => covertToString.capitalizeFirst;

  /// Uppercase all letter in side string
  String get allCapitalize => covertToString.allCapitalize;

  /// Capitalize each word inside string
  /// Example: your name => Your Name, your name => Your name
  String get capitalize => covertToString.capitalize;

  /// Remove all whitespace inside string
  /// Example: your name => yourname
  String get removeAllWhitespace => covertToString.removeAllWhitespace;
}

extension StringExtensions on String {
  String plus(String other) {
    return this + other;
  }

  bool equalsIgnoreCase(String secondString) =>
      toLowerCase().contains(secondString.toLowerCase());
  String get getFileExtension => '.${split('.').last}';

  /// Uppercase each first letter inside string and let the others lowercase
  /// Example: your name => Your Name
  String get capitalizeEachFirst => StringUtils.capitalize(this);

  /// Uppercase first letter inside string and let the others lowercase
  /// Example: your name => Your name
  String get capitalizeFirst => StringUtils.capitalizeFirst(this);

  /// Uppercase all letter in side string
  String get allCapitalize => toUpperCase();

  /// Remove all whitespace inside string
  /// Example: your name => yourname
  String get removeAllWhitespace => StringUtils.removeAllWhitespace(this);

  /// Discover if the String is numeric only
  bool get isNumericOnly => StringUtils.isNumericOnly(this);

  String numericOnly({bool firstWordOnly = false}) =>
      StringUtils.numericOnly(this, firstWordOnly: firstWordOnly);

  /// Discover if the String is alphanumeric only
  bool get isAlphabetOnly => StringUtils.isAlphabetOnly(this);

  /// Discover if the String is a vector
  bool get isVectorFileName => StringUtils.isVector(this);

  /// Discover if the String is a ImageFileName
  bool get isImageFileName => StringUtils.isImage(this);

  /// Discover if the String is a AudioFileName
  bool get isAudioFileName => StringUtils.isAudio(this);

  /// Discover if the String is a VideoFileName
  bool get isVideoFileName => StringUtils.isVideo(this);

  /// Discover if the String is a TxtFileName
  bool get isTxtFileName => StringUtils.isTxt(this);

  /// Discover if the String is a Document Word
  bool get isDocumentFileName => StringUtils.isWord(this);

  /// Discover if the String is a Document Excel
  bool get isExcelFileName => StringUtils.isExcel(this);

  /// Discover if the String is a Document Powerpoint
  bool get isPPTFileName => StringUtils.isPPT(this);

  /// Discover if the String is a PDF file
  bool get isPDFFileName => StringUtils.isPDF(this);

  /// Discover if the String is a HTML file
  bool get isHTMLFileName => StringUtils.isHTML(this);

  /// Discover if the String is a URL file
  bool get isURL => StringUtils.isURL(this);

  /// Discover if the String is a Email
  bool get isEmail => StringUtils.isEmail(this);

  /// Discover if the String is a Phone Number
  bool get isPhoneNumber => StringUtils.isPhoneNumber(this);

  /// Discover if the String is a DateTime
  bool get isDateTime => StringUtils.isDateTime(this);

  String get changeDateStringPattern => replaceAll(RegExp(r'-'), '/');

  List<TextSpan> toTextSpan(
    List<String> replace, [
    FontWeight fontWeight = FontWeight.w700,
    Color? color,
  ]) {
    final List<TextSpan> result = <TextSpan>[];
    final List<Match> matchs = RegExp(r'\<[0-9]+\>').allMatches(this).toList();
    int start = 0;
    int index = 0;

    for (final Match match in matchs) {
      // Add text normal
      result.add(TextSpan(text: substring(start, match.start)));
      // Add text boild if Exist
      try {
        index = int.parse(match[0]!.replaceAll(RegExp(r'[^0-9]'), ''));
        result.add(TextSpan(
          text: replace[index],
          style: TextStyle(
            fontWeight: fontWeight,
            color: color,
          ),
        ));
      } catch (e) {
        rethrow;
      }

      start = match.end;
    }
    result.add(TextSpan(text: substring(start, length)));

    return result;
  }
}
