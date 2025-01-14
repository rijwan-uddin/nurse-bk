// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nurse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Nurse _$NurseFromJson(Map<String, dynamic> json) {
  return _Nurse.fromJson(json);
}

/// @nodoc
mixin _$Nurse {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  Speciality get speciality => throw _privateConstructorUsedError;
  set speciality(Speciality value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  num get phone => throw _privateConstructorUsedError;
  set phone(num value) => throw _privateConstructorUsedError;
  String get focustype => throw _privateConstructorUsedError;
  set focustype(String value) => throw _privateConstructorUsedError;
  num get age => throw _privateConstructorUsedError;
  set age(num value) => throw _privateConstructorUsedError;
  String get mountDescription => throw _privateConstructorUsedError;
  set mountDescription(String value) => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  set price(num value) => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  set status(String value) => throw _privateConstructorUsedError;
  num get avgRating => throw _privateConstructorUsedError;
  set avgRating(num value) => throw _privateConstructorUsedError;
  num get discount => throw _privateConstructorUsedError;
  set discount(num value) => throw _privateConstructorUsedError;
  List<ImageModel> get additionalImage => throw _privateConstructorUsedError;
  set additionalImage(List<ImageModel> value) =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;

  /// Serializes this Nurse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Nurse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NurseCopyWith<Nurse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NurseCopyWith<$Res> {
  factory $NurseCopyWith(Nurse value, $Res Function(Nurse) then) =
      _$NurseCopyWithImpl<$Res, Nurse>;
  @useResult
  $Res call(
      {String? id,
      String name,
      Speciality speciality,
      String type,
      String email,
      num phone,
      String focustype,
      num age,
      String mountDescription,
      num price,
      String status,
      num avgRating,
      num discount,
      List<ImageModel> additionalImage,
      String? description});
}

/// @nodoc
class _$NurseCopyWithImpl<$Res, $Val extends Nurse>
    implements $NurseCopyWith<$Res> {
  _$NurseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Nurse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? speciality = null,
    Object? type = null,
    Object? email = null,
    Object? phone = null,
    Object? focustype = null,
    Object? age = null,
    Object? mountDescription = null,
    Object? price = null,
    Object? status = null,
    Object? avgRating = null,
    Object? discount = null,
    Object? additionalImage = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      speciality: null == speciality
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as Speciality,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as num,
      focustype: null == focustype
          ? _value.focustype
          : focustype // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as num,
      mountDescription: null == mountDescription
          ? _value.mountDescription
          : mountDescription // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as num,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      additionalImage: null == additionalImage
          ? _value.additionalImage
          : additionalImage // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NurseImplCopyWith<$Res> implements $NurseCopyWith<$Res> {
  factory _$$NurseImplCopyWith(
          _$NurseImpl value, $Res Function(_$NurseImpl) then) =
      __$$NurseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      Speciality speciality,
      String type,
      String email,
      num phone,
      String focustype,
      num age,
      String mountDescription,
      num price,
      String status,
      num avgRating,
      num discount,
      List<ImageModel> additionalImage,
      String? description});
}

/// @nodoc
class __$$NurseImplCopyWithImpl<$Res>
    extends _$NurseCopyWithImpl<$Res, _$NurseImpl>
    implements _$$NurseImplCopyWith<$Res> {
  __$$NurseImplCopyWithImpl(
      _$NurseImpl _value, $Res Function(_$NurseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Nurse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? speciality = null,
    Object? type = null,
    Object? email = null,
    Object? phone = null,
    Object? focustype = null,
    Object? age = null,
    Object? mountDescription = null,
    Object? price = null,
    Object? status = null,
    Object? avgRating = null,
    Object? discount = null,
    Object? additionalImage = null,
    Object? description = freezed,
  }) {
    return _then(_$NurseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      speciality: null == speciality
          ? _value.speciality
          : speciality // ignore: cast_nullable_to_non_nullable
              as Speciality,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as num,
      focustype: null == focustype
          ? _value.focustype
          : focustype // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as num,
      mountDescription: null == mountDescription
          ? _value.mountDescription
          : mountDescription // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      avgRating: null == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as num,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      additionalImage: null == additionalImage
          ? _value.additionalImage
          : additionalImage // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$NurseImpl implements _Nurse {
  _$NurseImpl(
      {this.id,
      required this.name,
      required this.speciality,
      required this.type,
      required this.email,
      required this.phone,
      required this.focustype,
      required this.age,
      required this.mountDescription,
      required this.price,
      required this.status,
      this.avgRating = 0.0,
      this.discount = 0,
      required this.additionalImage,
      this.description});

  factory _$NurseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NurseImplFromJson(json);

  @override
  String? id;
  @override
  String name;
  @override
  Speciality speciality;
  @override
  String type;
  @override
  String email;
  @override
  num phone;
  @override
  String focustype;
  @override
  num age;
  @override
  String mountDescription;
  @override
  num price;
  @override
  String status;
  @override
  @JsonKey()
  num avgRating;
  @override
  @JsonKey()
  num discount;
  @override
  List<ImageModel> additionalImage;
  @override
  String? description;

  @override
  String toString() {
    return 'Nurse(id: $id, name: $name, speciality: $speciality, type: $type, email: $email, phone: $phone, focustype: $focustype, age: $age, mountDescription: $mountDescription, price: $price, status: $status, avgRating: $avgRating, discount: $discount, additionalImage: $additionalImage, description: $description)';
  }

  /// Create a copy of Nurse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NurseImplCopyWith<_$NurseImpl> get copyWith =>
      __$$NurseImplCopyWithImpl<_$NurseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NurseImplToJson(
      this,
    );
  }
}

abstract class _Nurse implements Nurse {
  factory _Nurse(
      {String? id,
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
      num avgRating,
      num discount,
      required List<ImageModel> additionalImage,
      String? description}) = _$NurseImpl;

  factory _Nurse.fromJson(Map<String, dynamic> json) = _$NurseImpl.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  String get name;
  set name(String value);
  @override
  Speciality get speciality;
  set speciality(Speciality value);
  @override
  String get type;
  set type(String value);
  @override
  String get email;
  set email(String value);
  @override
  num get phone;
  set phone(num value);
  @override
  String get focustype;
  set focustype(String value);
  @override
  num get age;
  set age(num value);
  @override
  String get mountDescription;
  set mountDescription(String value);
  @override
  num get price;
  set price(num value);
  @override
  String get status;
  set status(String value);
  @override
  num get avgRating;
  set avgRating(num value);
  @override
  num get discount;
  set discount(num value);
  @override
  List<ImageModel> get additionalImage;
  set additionalImage(List<ImageModel> value);
  @override
  String? get description;
  set description(String? value);

  /// Create a copy of Nurse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NurseImplCopyWith<_$NurseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
