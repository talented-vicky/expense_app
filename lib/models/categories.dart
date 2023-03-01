import 'package:realm/realm.dart';
import 'dart:ui';

part 'categories.g.dart';

@RealmModel()
class $Categories {
  late final String name;
  late final int colorval;

  Color get color {
    return Color(colorval);
  }

  set color(Color val) {
    colorval = val.value;
  }
}
