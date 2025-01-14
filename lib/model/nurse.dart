import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthn/model/image_model.dart';
import 'package:healthn/model/speciality.dart';

part 'nurse.freezed.dart';
part 'nurse.g.dart';

@unfreezed
class Nurse with _$Nurse {
  @JsonSerializable(explicitToJson: true)
  factory Nurse({
    String? id,
    required String name,
    required Speciality speciality,
    required String type,
    required String email,
    required num phone,
    required String focustype,
    required num age,
    required String mountDescription,
    required num price,
    required String status,
    @Default(0.0) num avgRating,
    @Default(0) num discount,


    required List<ImageModel> additionalImage,
    String? description

  }) = _Nurse;

  factory Nurse.fromJson(Map<String, dynamic> json) =>
      _$NurseFromJson(json);
}