const String collectionSpeciality = 'Speciality';
const String specialityFieldId = 'id';

const String specialityFieldName = 'Speciality';

class Speciality {
  String? id;
  String name;

  Speciality({this.id, required this.name});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      specialityFieldId: id,
      specialityFieldName: name,
    };
  }

  factory Speciality.fromJson(Map<String, dynamic> map) => Speciality(
        id: map[specialityFieldId],
        name: map[specialityFieldName],
      );
}
