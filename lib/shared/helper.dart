import 'package:intl/intl.dart';

class HelperFunctions {
  static String formatDateTime() {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('d MMMM yyyy');
    String formattedDate = formatter.format(now);
    return formattedDate;
  }
}
