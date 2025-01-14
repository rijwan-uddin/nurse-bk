import 'package:flutter/foundation.dart';
import 'package:healthn/db/db_helper.dart';
import 'package:healthn/model/speciality.dart';

import '../model/nurse.dart';

class NurseProvider with ChangeNotifier {
  List<Speciality> specialityList = [];


  Future<void> addSpeciality(String name) {
    final speciality = Speciality(name: name);
    return DbHelper.addSpeciality(speciality);
  }
  getAllSpeciality() {
    DbHelper.getAllSpeciality().listen((snapshot) {
      specialityList = List.generate(snapshot.docs.length,
              (index) => Speciality.fromJson(snapshot.docs[index].data()));
      notifyListeners();
    });
  }

  Future<void> addNurse(Nurse nurse){
    return DbHelper.addNurse(nurse);
  }

}