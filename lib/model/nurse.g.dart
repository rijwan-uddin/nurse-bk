// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nurse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NurseImpl _$$NurseImplFromJson(Map<String, dynamic> json) => _$NurseImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      speciality:
          Speciality.fromJson(json['speciality'] as Map<String, dynamic>),
      type: json['type'] as String,
      email: json['email'] as String,
      phone: json['phone'] as num,
      focustype: json['focustype'] as String,
      age: json['age'] as num,
      mountDescription: json['mountDescription'] as String,
      price: json['price'] as num,
      status: json['status'] as String,
      avgRating: json['avgRating'] as num? ?? 0.0,
      discount: json['discount'] as num? ?? 0,
      additionalImage: (json['additionalImage'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$NurseImplToJson(_$NurseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'speciality': instance.speciality.toJson(),
      'type': instance.type,
      'email': instance.email,
      'phone': instance.phone,
      'focustype': instance.focustype,
      'age': instance.age,
      'mountDescription': instance.mountDescription,
      'price': instance.price,
      'status': instance.status,
      'avgRating': instance.avgRating,
      'discount': instance.discount,
      'additionalImage':
          instance.additionalImage.map((e) => e.toJson()).toList(),
      'description': instance.description,
    };
