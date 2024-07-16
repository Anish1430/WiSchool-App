import 'package:flutter/widgets.dart';

late BuildContext globalContext;

extension SizeExtension on num {
  double get w => (this / 375.0) * MediaQuery.of(globalContext).size.width;
  double get h => (this / 812.0) * MediaQuery.of(globalContext).size.height;
  double get sp => (this / 812.0) * MediaQuery.of(globalContext).size.height;
  double get v => (this / 812.0) * MediaQuery.of(globalContext).size.height;
}

void initGlobalContext(BuildContext context) {
  globalContext = context;
}
