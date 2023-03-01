import 'package:realm/realm.dart';
import 'dart:ui';
import 'package:intl/intl.dart';

import 'categories.dart';
import '../utility/recurrence.dart';

part 'expenses.g.dart';

@RealmModel()
class $Expenses {
  @PrimaryKey()
  late final ObjectId id;
  late final double amount;
  late final $Categories? category;
  late final DateTime date;
  late final String? note;
  late final String? recurrence = Recurrence.none;

  get dayInWeek {
    DateFormat format = DateFormat("EEEE");
    return format.format(date);
  }

  get dayInMonth {
    return date.day;
  }

  get month {
    DateFormat format = DateFormat("MMM");
    return format.format(date);
  }

  get year {
    return date.year;
  }
}
