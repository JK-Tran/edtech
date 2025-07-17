import 'package:clock/clock.dart';
import 'package:edtech/core/constants/locale_constants.dart';
import 'package:edtech/core/utils/string_utils.dart';
import 'package:edtech/resources/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class DateTimeUtils {
  DateTimeUtils._();
  static List<String> l10nShortWeekDays() {
    return <String>[
      S.current.monday_s,
      S.current.tuesday_s,
      S.current.wednesday_s,
      S.current.thursday_s,
      S.current.friday_s,
      S.current.saturday_s,
      S.current.sunday_s,
    ];
  }

  static String weekDayS(int? dayWeek) {
    switch (dayWeek) {
      case 1:
        return S.current.monday_s;

      case 2:
        return S.current.tuesday_s;

      case 3:
        return S.current.wednesday_s;

      case 4:
        return S.current.thursday_s;

      case 5:
        return S.current.friday_s;

      case 6:
        return S.current.saturday_s;

      case 7:
        return S.current.sunday_s;

      default:
        return S.current.monday_s;
    }
  }

  static String weekDayNum(int? dayWeek) {
    switch (dayWeek) {
      case 1:
        return S.current.mon;

      case 2:
        return S.current.tue;

      case 3:
        return S.current.wed;

      case 4:
        return S.current.thu;

      case 5:
        return S.current.fri;

      case 6:
        return S.current.sat;

      case 7:
        return S.current.sun;

      default:
        return S.current.mon;
    }
  }

  static String weekDay(int? dayWeek) {
    switch (dayWeek) {
      case 1:
        return S.current.monday;

      case 2:
        return S.current.tuesday;

      case 3:
        return S.current.wednesday;

      case 4:
        return S.current.thursday;

      case 5:
        return S.current.friday;

      case 6:
        return S.current.saturday;

      case 7:
        return S.current.sunday;

      default:
        return S.current.monday;
    }
  }

  static int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);

    return (to.difference(from).inHours / 24).round();
  }

  static int timezoneOffset() {
    return DateTime.now().timeZoneOffset.inHours;
  }

  static DateTime toLocalFromTimestamp({required int utcTimestampMillis}) {
    return DateTime.fromMillisecondsSinceEpoch(utcTimestampMillis, isUtc: true)
        .toLocal();
  }

  static DateTime toUtcFromTimestamp(int localTimestampMillis) {
    return DateTime.fromMillisecondsSinceEpoch(
      localTimestampMillis,
    ).toUtc();
  }

  static DateTime startTimeOfDate() {
    final now = DateTime.now();

    return DateTime(
      now.year,
      now.month,
      now.day,
    );
  }

  static DateTime? toDateTime(String dateTimeString, {bool isUtc = false}) {
    final dateTime = DateTime.tryParse(dateTimeString);
    if (dateTime != null) {
      if (isUtc) {
        return DateTime.utc(
          dateTime.year,
          dateTime.month,
          dateTime.day,
          dateTime.hour,
          dateTime.minute,
          dateTime.second,
          dateTime.millisecond,
          dateTime.microsecond,
        );
      }

      return dateTime;
    }

    return null;
  }

  static DateTime? toNormalizeDateTime(
    String dateTimeString, {
    bool isUtc = false,
  }) {
    final dateTime = DateTime.tryParse('-123450101 $dateTimeString');
    if (dateTime != null) {
      if (isUtc) {
        return DateTime.utc(
          dateTime.year,
          dateTime.month,
          dateTime.day,
          dateTime.hour,
          dateTime.minute,
          dateTime.second,
          dateTime.millisecond,
          dateTime.microsecond,
        );
      }

      return dateTime;
    }

    return null;
  }

  static DateTime? tryParse({
    String? date,
    String? format,
    String locale = LocaleConstants.defaultLocale,
  }) {
    if (date == null) {
      return null;
    }

    if (format == null) {
      return DateTime.tryParse(date);
    }

    final DateFormat dateFormat = DateFormat(format, locale);
    try {
      return dateFormat.parse(date);
    } catch (e) {
      return null;
    }
  }

  static String? formatDateTime(DateTime? time) {
    if (time == null) {
      return null;
    }

    try {
      return DateFormat('yyyy-MM-dd HH:mm:ss').format(time);
    } catch (e) {
      return null;
    }
  }

  static String? formatTime(DateTime? time, {bool hmOnly = false}) {
    try {
      return hmOnly
          ? DateFormat.Hm().format(time!)
          : DateFormat.Hms().format(time!);
    } catch (e) {
      return null;
    }
  }

  static DateTime? parseTime(String? numberString) {
    if (numberString == null) {
      return null;
    }
    try {
      return DateFormat.Hms().parse(numberString);
    } catch (e) {
      return null;
    }
  }

  static String? formatDateTimePattern(DateTime? time, [String? pattern]) {
    if (time == null) {
      return null;
    }

    try {
      return DateFormat(pattern ?? 'yyyy-MM-dd HH:mm').format(time);
    } catch (e) {
      return null;
    }
  }

  static DateTime? parseDateTimePattern(String? timeString, [String? pattern]) {
    if (timeString == null) {
      return null;
    }

    try {
      return DateFormat(pattern ?? 'yyyy-MM-dd HH:mm').parse(timeString);
    } catch (e) {
      return null;
    }
  }

  static String? formatDateTimeType2(DateTime? time) {
    if (time == null) {
      return null;
    }

    try {
      return DateFormat('HH:mm dd/MM/yyyy').format(time);
    } catch (e) {
      return null;
    }
  }

  static String? formatWeekDayDateTime(DateTime? time, {double? duration}) {
    if (time == null) {
      return null;
    }
    if (duration != null && duration > 0) {
      final date = DateFormat('dd/MM/yyyy').format(time);
      final String weekDay = DateFormat('EEEE').format(time);
      final String timeFrom = DateFormat('HH:mm').format(time);
      final String timeTo = DateFormat('HH:mm').format(time.add(
        Duration(
          hours: duration.truncate(),
          minutes: ((duration - duration.truncate()) * 60).truncate(),
        ),
      ));

      return '$weekDay $timeFrom - $timeTo, $date';
    }

    try {
      return DateFormat('EEEE, HH:mm dd/MM/yyyy').format(time);
    } catch (e) {
      return null;
    }
  }

  static DateTime? parseDateTime(String? timeString) {
    if (timeString == null) {
      return null;
    }

    try {
      return DateFormat('yyyy-MM-dd HH:mm').parse(timeString);
    } catch (e) {
      return null;
    }
  }

  static DateTime? parseDateTimeType2(String? timeString) {
    if (timeString == null) {
      return null;
    }

    try {
      return DateFormat('HH:mm yyyy-MM-dd').parse(timeString);
    } catch (e) {
      return null;
    }
  }

  static String? formatDateTimeDateOnly(DateTime? time) {
    if (time == null) {
      return null;
    }

    try {
      return DateFormat('yyyy-MM-dd').format(time);
    } catch (e) {
      return null;
    }
  }

  static String? formatDateTimeDateOnlyType2(DateTime? time) {
    if (time == null) {
      return null;
    }

    try {
      return DateFormat('dd-MM-yyyy').format(time);
    } catch (e) {
      return null;
    }
  }

  static DateTime? parseDateTimeDateOnly(String? timeString) {
    if (timeString == null) {
      return null;
    }

    try {
      return DateFormat('yyyy-MM-dd').parse(timeString);
    } catch (e) {
      return null;
    }
  }

  static DateTime? parseDateTimeDateOnlyType2(String? timeString) {
    if (timeString == null) {
      return null;
    }

    try {
      return DateFormat('dd-MM-yyyy').parse(timeString);
    } catch (e) {
      return null;
    }
  }

  static DateTime? parseTimeString(String timeString) {
    final parts = timeString.split(' - ');
    return DateFormat('HH:mm').parse(parts[0]);
  }

  static String formatDuration(Duration duration) {
    return (duration.inMinutes / 60).toStringAsFixed(2);
  }

  static Duration parseDuration(String numberString) {
    final double number = double.tryParse(numberString)!;

    return Duration(
      hours: number.ceil(),
      minutes: ((number - number.ceil()) * 60).ceil(),
    );
  }

  static String getDateTimeNow(String formatDate) {
    return DateFormat(formatDate).format(DateTime.now());
  }

  static double? parseDurationString(String? duration) =>
      double.tryParse(duration ?? '0.0');

  static String? fromTimeToString(DateTime? time) {
    try {
      return DateFormat.Hms().format(time!);
    } catch (e) {
      return null;
    }
  }

  static DateTime? fromStringToTime(String? numberString) {
    try {
      return DateFormat.Hms().parse(numberString!);
    } catch (e) {
      return null;
    }
  }

  /// Return the Date from dayOfWeek
  /// dayOfWeek must starts from 0
  static DateTime getDateFromDayOfWeek(int dayOfWeek, [DateTime? dayInWeek]) {
    final DateTime day = dayInWeek ?? DateTime.now();

    return day.subtract(Duration(days: day.weekday - 1 - dayOfWeek)).dateOnly;
  }

  static DateTime getFirstDayOfweek(DateTime day) {
    return day.subtract(Duration(days: day.weekday - 1)).dateOnly;
  }

  static DateTime getLastDayOfweek(DateTime date) {
    int days = DateTime.monday - 1 - date.weekday;
    if (days < 0) {
      days += DateTime.daysPerWeek;
    }

    return DateTime(date.year, date.month, date.day + days);
  }

  static String? relative(
    DateTime? dateTime, {
    Duration? formatAfter,
    Duration? timeShowNow,
  }) {
    // After now
    final DateTime now = DateTime.now();
    if (dateTime!.isAfter(now)) {
      return formatDateTime(dateTime);
    }
    // Before formatAfter
    final Duration difference = dateTime.difference(now).abs();
    if (formatAfter != null && difference >= formatAfter) {
      return formatDateTime(dateTime);
    }
    // Less timeShowNow
    if (timeShowNow != null && difference < timeShowNow) {
      return S.current.common__now;
    }
    // Defaut
    if (difference < const Duration(minutes: 1)) {
      return S.current.few_seconds_ago;
    } else if (difference < const Duration(hours: 1)) {
      return S.current.minutes_relative(difference.inMinutes);
    }
    // else if (difference < const Duration(days: 1)) {
    //   return S.current.hours_relative(difference.inHours);
    // } else if (difference < const Duration(days: 30)) {
    //   return S.current.days_relative(difference.inDays);
    // }
    else {
      return formatDateTimeType2(dateTime);
    }
  }

  static String? relativeDateFuture(DateTime? dateTime) {
    // After now
    final DateTime now = DateTime.now();
    if (dateTime == null || dateTime.isBefore(now)) {
      return formatDateTime(dateTime);
    }
    // Before formatAfter
    final difference = dateTime.difference(now).abs();
    // Defaut
    if (difference < const Duration(hours: 1)) {
      return S.current.relative_minutes_next(difference.inMinutes);
    } else if (difference < const Duration(days: 1)) {
      return S.current.relative_hours_next(difference.inHours);
    } else if (difference.inDays == 1 && difference.inHours <= 36) {
      return S.current.tomorrow;
    } else if (difference < const Duration(days: 30)) {
      return S.current.relative_days_next(difference.inDays);
    } else {
      return formatDateTimeDateOnlyType2(dateTime);
    }
  }

  /// From [duration] hours to text with unit
  static String fromDurationNumToText(
    double? duration, {
    bool withUnit = false,
  }) {
    String result = '';
    duration ??= 0;
    if (duration.truncate() > 0) {
      result +=
          '${duration.truncate()}${withUnit ? ' ${S.current.hours}' : ''}';
    }
    if (((duration - duration.truncate()) * 60).truncate() > 0) {
      result +=
          ' ${((duration - duration.truncate()) * 60).round()}${withUnit ? ' ${S.current.minutes}' : ''}';
    }

    if (StringUtils.isNullOrBlank(result)) {
      result = duration % 1 == 0
          ? '${duration.toInt()}'
          : duration.toStringAsFixed(2);
    }

    return result;
  }

  static String fromDurationToText(Duration duration) {
    if (duration.inHours == 0) {
      return '0:${duration.inMinutes}:00';
    }

    return '${duration.inHours}:00:00';
  }
}

extension DateTimeExtensions on DateTime {
  String toStringWithFormat(String format) {
    return DateFormat(format).format(this);
  }

  DateTime get lastDateOfMonth {
    return DateTime(year, month + 1, 0);
  }
}

extension DateTimeTimezoneExtension on DateTime {
  DateTime get dateOnly => DateTime(year, month, day);

  bool isSameDate(DateTime anotherDate) =>
      dateOnly.isAtSameMomentAs(anotherDate.dateOnly);
  bool isSameTime(DateTime anotherDate) =>
      hour == anotherDate.hour && minute == anotherDate.minute;
  Map<String, tz.Location> get getTimeZoneDatabase {
    tz.initializeTimeZones();

    return tz.timeZoneDatabase.locations;
  }

  int _getESTtoUTCDifference(String locationName) {
    tz.initializeTimeZones();
    final locationNY = tz.getLocation(locationName);
    final tz.TZDateTime nowNY = tz.TZDateTime.now(locationNY);

    return nowNY.timeZoneOffset.inHours;
  }

  DateTime toESTzone(String locationName) {
    DateTime result = toUtc(); // local time to UTC
    result = result.add(Duration(
      hours: _getESTtoUTCDifference(locationName),
    )); // convert UTC to EST

    return result;
  }

  DateTime fromESTzone(String locationName) {
    DateTime result = subtract(Duration(
      hours: _getESTtoUTCDifference(locationName),
    )); // convert EST to UTC

    String dateTimeAsIso8601String = result.toIso8601String();
    dateTimeAsIso8601String +=
        dateTimeAsIso8601String.characters.last.equalsIgnoreCase('Z')
            ? ''
            : 'Z';
    result = DateTime.parse(dateTimeAsIso8601String); // make isUtc to be true

    result = result.toLocal(); // convert UTC to local time

    return result;
  }
}

extension NumTimeExtension<T extends num> on T {
  /// Returns a Duration represented in weeks
  Duration get weeks => days * DurationTimeExtension.daysPerWeek;

  /// Returns a Duration represented in days
  Duration get days => milliseconds * Duration.millisecondsPerDay;

  /// Returns a Duration represented in hours
  Duration get hours => milliseconds * Duration.millisecondsPerHour;

  /// Returns a Duration represented in minutes
  Duration get minutes => milliseconds * Duration.millisecondsPerMinute;

  /// Returns a Duration represented in seconds
  Duration get seconds => milliseconds * Duration.millisecondsPerSecond;

  /// Returns a Duration represented in milliseconds
  Duration get milliseconds => Duration(
        microseconds: (this * Duration.microsecondsPerMillisecond).toInt(),
      );

  /// Returns a Duration represented in microseconds
  Duration get microseconds =>
      milliseconds ~/ Duration.microsecondsPerMillisecond;

  /// Returns a Duration represented in nanoseconds
  Duration get nanoseconds =>
      microseconds ~/ DurationTimeExtension.nanosecondsPerMicrosecond;

  String get prettyDuration {
    String result = '';
    final Duration duration =
        Duration(hours: toInt(), minutes: ((this - toInt()) * 60).round());
    String twoDigits(int n) => n.toString().padLeft(2, '');
    final String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    final String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    final String twoDigitHours = twoDigits(duration.inHours);

    if (duration == Duration.zero) {
      return '0';
    }

    if (twoDigitHours != '0') {
      result += '$twoDigitHours ${S.current.hour} ';
    }
    if (twoDigitMinutes != '0') {
      result += '$twoDigitMinutes ${S.current.minute} ';
    }
    if (twoDigitSeconds != '0') {
      result += '${twoDigitSeconds}s';
    }

    return result;
  }
}

extension DateTimeTimeExtension on DateTime {
  /// Adds this DateTime and Duration and returns the sum as a new DateTime object.
  DateTime operator +(Duration duration) => add(duration);

  /// Subtracts the Duration from this DateTime returns the difference as a new DateTime object.
  DateTime operator -(Duration duration) => subtract(duration);

  /// Returns only year, month and day
  DateTime get date =>
      isUtc ? DateTime.utc(year, month, day) : DateTime(year, month, day);

  /// Returns only the time
  Duration get timeOfDay => hour.hours + minute.minutes + second.seconds;

  /// Returns if today, true
  bool get isToday {
    return _calculateDifference(this) == 0;
  }

  /// Returns if tomorrow, true
  bool get isTomorrow {
    return _calculateDifference(this) == 1;
  }

  /// Returns if yesterday, true
  bool get wasYesterday {
    return _calculateDifference(this) == -1;
  }

  /// Returns true if this year is a leap year.
  bool get isLeapYear =>
      // Leap years are used since 1582.
      year >= 1582 && year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);

  /// Returns the amount of days that are in this month.
  ///
  /// Accounts for leap years.
  int get daysInMonth {
    final days = [
      31, // January
      if (isLeapYear) 29 else 28, // February
      31, // March
      30, // April
      31, // May
      30, // June
      31, // July
      31, // August
      30, // September
      31, // October
      30, // November
      31, // December
    ];

    return days[month - 1];
  }

  /// Returns true if [other] is in the same year as [this].
  ///
  /// Does not account for timezones.
  bool isAtSameYearAs(DateTime other) => year == other.year;

  /// Returns true if [other] is in the same month as [this].
  ///
  /// This means the exact month, including year.
  ///
  /// Does not account for timezones.
  bool isAtSameMonthAs(DateTime other) =>
      isAtSameYearAs(other) && month == other.month;

  /// Returns true if [other] is on the same day as [this].
  ///
  /// This means the exact day, including year and month.
  ///
  /// Does not account for timezones.
  bool isAtSameDayAs(DateTime other) =>
      isAtSameMonthAs(other) && day == other.day;

  /// Returns true if [other] is at the same hour as [this].
  ///
  /// This means the exact hour, including year, month and day.
  ///
  /// Does not account for timezones.
  bool isAtSameHourAs(DateTime other) =>
      isAtSameDayAs(other) && hour == other.hour;

  /// Returns true if [other] is at the same minute as [this].
  ///
  /// This means the exact minute, including year, month, day and hour.
  ///
  /// Does not account for timezones.
  bool isAtSameMinuteAs(DateTime other) =>
      isAtSameHourAs(other) && minute == other.minute;

  /// Returns true if [other] is at the same second as [this].
  ///
  /// This means the exact second, including year, month, day, hour and minute.
  ///
  /// Does not account for timezones.
  bool isAtSameSecondAs(DateTime other) =>
      isAtSameMinuteAs(other) && second == other.second;

  /// Returns true if [other] is at the same millisecond as [this].
  ///
  /// This means the exact millisecond,
  /// including year, month, day, hour, minute and second.
  ///
  /// Does not account for timezones.
  bool isAtSameMillisecondAs(DateTime other) =>
      isAtSameSecondAs(other) && millisecond == other.millisecond;

  /// Returns true if [other] is at the same microsecond as [this].
  ///
  /// This means the exact microsecond,
  /// including year, month, day, hour, minute, second and millisecond.
  ///
  /// Does not account for timezones.
  bool isAtSameMicrosecondAs(DateTime other) =>
      isAtSameMillisecondAs(other) && microsecond == other.microsecond;

  static int _calculateDifference(DateTime date) {
    final now = clock.now();

    return DateTime(date.year, date.month, date.day)
        .difference(DateTime(now.year, now.month, now.day))
        .inDays;
  }

  /// Returns a range of dates to [to], exclusive start, inclusive end
  /// ```dart
  /// final start = DateTime(2019);
  /// final end = DateTime(2020);
  /// start.to(end, by: const Duration(days: 365)).forEach(print); // 2020-01-01 00:00:00.000
  /// ```
  Iterable<DateTime> to(
    DateTime to, {
    Duration by = const Duration(days: 1),
  }) sync* {
    if (isAtSameMomentAs(to)) {
      return;
    }

    if (isBefore(to)) {
      var value = this + by;
      yield value;

      var count = 1;
      while (value.isBefore(to)) {
        value = this + (by * ++count);
        yield value;
      }
    } else {
      var value = this - by;
      yield value;

      var count = 1;
      while (value.isAfter(to)) {
        value = this - (by * ++count);
        yield value;
      }
    }
  }

  // DateTime copyWith({
  //   int? year,
  //   int? month,
  //   int? day,
  //   int? hour,
  //   int? minute,
  //   int? second,
  //   int? millisecond,
  //   int? microsecond,
  // }) {
  //   return isUtc
  //       ? DateTime.utc(
  //           year ?? this.year,
  //           month ?? this.month,
  //           day ?? this.day,
  //           hour ?? this.hour,
  //           minute ?? this.minute,
  //           second ?? this.second,
  //           millisecond ?? this.millisecond,
  //           microsecond ?? this.microsecond,
  //         )
  //       : DateTime(
  //           year ?? this.year,
  //           month ?? this.month,
  //           day ?? this.day,
  //           hour ?? this.hour,
  //           minute ?? this.minute,
  //           second ?? this.second,
  //           millisecond ?? this.millisecond,
  //           microsecond ?? this.microsecond,
  //         );
  // }

  /// Returns the Monday of this week
  DateTime get firstDayOfWeek => isUtc
      ? DateTime.utc(year, month, day + 1 - weekday)
      : DateTime(year, month, day + 1 - weekday);

  /// Returns the Sunday of this week
  DateTime get lastDayOfWeek => isUtc
      ? DateTime.utc(year, month, day + 7 - weekday)
      : DateTime(year, month, day + 7 - weekday);

  /// Returns the first day of this month
  DateTime get firstDayOfMonth =>
      isUtc ? DateTime.utc(year, month) : DateTime(year, month);

  /// Returns the last day of this month (considers leap years)
  DateTime get lastDayOfMonth =>
      isUtc ? DateTime.utc(year, month + 1, 0) : DateTime(year, month + 1, 0);

  /// Returns the first day of this year
  DateTime get firstDayOfYear => isUtc ? DateTime.utc(year) : DateTime(year);

  /// Returns the last day of this year
  DateTime get lastDayOfYear =>
      isUtc ? DateTime.utc(year, 12, 31) : DateTime(year, 12, 31);

  bool get isWeekend =>
      (weekday == DateTime.saturday) || (weekday == DateTime.sunday);

  bool get isWorkday => !isWeekend;
}

extension DurationTimeExtension on Duration {
  static const int daysPerWeek = 7;
  static const int nanosecondsPerMicrosecond = 1000;

  /// Returns the representation in weeks
  int get inWeeks => (inDays / daysPerWeek).ceil();

  /// Adds the Duration to the current DateTime and returns a DateTime in the future
  DateTime get fromNow => clock.now() + this;

  /// Subtracts the Duration from the current DateTime and returns a DateTime in the past
  DateTime get ago => clock.now() - this;

  /// Returns a Future.delayed from this
  Future<void> get delay => Future.delayed(this);

  /// Returns this [Duration] clamped to be in the range [min]-[max].
  ///
  /// The comparison is done using [compareTo].
  ///
  /// The arguments [min] and [max] must form a valid range where
  /// `min.compareTo(max) <= 0`.
  ///
  /// Example:
  /// ```dart
  /// var result = Duration(days: 10, hours: 12).clamp(
  ///   min: Duration(days: 5),
  ///   max: Duration(days: 10),
  /// ); // Duration(days: 10)
  /// result = Duration(hours: 18).clamp(
  ///   min: Duration(days: 5),
  ///   max: Duration(days: 10),
  /// ); // Duration(days: 5)
  /// result = Duration(days: 0).clamp(
  ///   min: Duration(days: -5),
  ///   max: Duration(days: 5),
  /// ); // Duration(days: 0)
  /// ```
  Duration clamp({Duration? min, Duration? max}) {
    assert(
      (min == null || max == null) || min.compareTo(max) <= 0,
      'Duration min has to be shorter than max\n(min: $min - max: $max)',
    );
    if ((min != null) && compareTo(min).isNegative) {
      return min;
    } else if ((max != null) && max.compareTo(this).isNegative) {
      return max;
    }

    return this;
  }
}
