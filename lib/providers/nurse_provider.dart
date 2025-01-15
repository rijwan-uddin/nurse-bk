import 'package:flutter/foundation.dart';
import 'package:healthn/db/db_helper.dart';
import 'package:healthn/model/speciality.dart';

import '../model/nurse.dart';

class NurseProvider with ChangeNotifier {
  List<Speciality> specialityList = [];
  List<Nurse> nurseList = [];

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

  getAllNurses() {
    DbHelper.getAllNurses().listen((snapshot) {
      nurseList = List.generate(snapshot.docs.length,
              (index) => Nurse.fromJson(snapshot.docs[index].data()));
      notifyListeners();
    });
  }
  Nurse findNurseById(String id) =>
      nurseList.firstWhere((element) => element.id== id);

  Future<void> addNurse(Nurse nurse){
    return DbHelper.addNurse(nurse);
  }
  Future<void> updateNurseField(String id, String field, dynamic value ){
    return DbHelper().updateNurseField(id, {field : value});
  }

}