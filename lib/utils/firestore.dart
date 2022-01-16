import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:detect/utils/models.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<CautionIngredient>> getCautionIngredients() async {
    var ref = _db.collection('Caution');
    var snapshot = await ref.get();
    var data = snapshot.docs.map((s) => s.data());
    var cautionIngredients = data.map((d) => CautionIngredient.fromJson(d));
    return cautionIngredients.toList();
  }

  Future<List<DangerIngredient>> getDangerIngredients() async {
    var ref = _db.collection('Danger');
    var snapshot = await ref.get();
    var data = snapshot.docs.map((s) => s.data());
    var dangerIngredients = data.map((d) => DangerIngredient.fromJson(d));
    return dangerIngredients.toList();
  }
}
