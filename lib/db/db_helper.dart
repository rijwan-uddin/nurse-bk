import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:healthn/model/nurse.dart';
import 'package:healthn/model/speciality.dart';

class DbHelper {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;
  static const String collectionAdmin = 'Admins';
  static const String collectionNurse = 'Nurses';
  static const String collectionSpeciality = 'Speciality';

  static Future<bool> isAdmin(String uid) async {
    final snapshot = await _db.collection(collectionAdmin).doc(uid).get();
    return snapshot.exists;
  }

  static Future<void> addSpeciality(Speciality speciality) {
    final doc =   _db.collection(collectionSpeciality).doc();
    speciality.id = doc.id;
    return doc.set(speciality.toJson());
  }
  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllSpeciality() =>
      _db.collection(collectionSpeciality).snapshots();

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllNurses() =>
      _db.collection(collectionNurse).snapshots();

 static Future<void> addNurse(Nurse nurse){
    final doc = _db.collection(collectionNurse).doc();
    nurse.id = doc.id;
    return doc.set(nurse.toJson());
  }

  Future<void> updateNurseField(id, Map<String, dynamic> map) {
    return _db.collection(collectionNurse).doc(id).update(map);

  }


}
