import 'package:intl/intl.dart';

class DateTimeFormat {
  DateTimeFormat._();

  static DateFormat get _datetimeFormat => DateFormat.yMd().add_jm(); //
  static String formatDateTime(DateTime datetime) => _datetimeFormat.format(datetime);

  static DateFormat get _dateFormat => DateFormat.yMd(); //
  static String formatDate(DateTime date) => _dateFormat.format(date);

  static DateFormat get _timeFormat => DateFormat.jm(); //
  static String formatTime(DateTime time) => _timeFormat.format(time);
}
