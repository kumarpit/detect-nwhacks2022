import 'package:detect/results/caution.dart';
import 'package:detect/home.dart';
import 'package:detect/results/danger.dart';
import 'package:detect/results/okay.dart';
import 'package:detect/ingredients.dart';

var appRoutes = {
  '/': (context) => HomeScreen(),
  '/caution': (context) => const CautionScreen(),
  '/danger': (context) => const DangerScreen(),
  '/okay': (context) => const OkayScreen(),
  '/ingredients': (context) => const IngredientScreen(),
};
