import 'package:detect/pages/results/caution.dart';
import 'package:detect/pages/home.dart';
import 'package:detect/pages/results/danger.dart';
import 'package:detect/pages/results/okay.dart';
// import 'package:detect/ingredients.dart';

var appRoutes = {
  '/': (context) => HomeScreen(),
  '/caution': (context) => const CautionScreen(),
  '/danger': (context) => const DangerScreen(),
  '/okay': (context) => const OkayScreen(),
  // '/ingredients': (context) => const IngredientScreen(),
};
