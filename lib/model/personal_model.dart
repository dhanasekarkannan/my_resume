library peronal_model;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'personal_model.g.dart';

abstract class PersonalModel
    implements Built<PersonalModel, PersonalModelBuilder> {
  PersonalModel._();

  factory PersonalModel([updates(PersonalModelBuilder b)]) = _$PersonalModel;

  @BuiltValueField(wireName: 'bronze')
  String get bronze;
  @BuiltValueField(wireName: 'silver')
  String get silver;
  @BuiltValueField(wireName: 'gold')
  String get gold;
  @BuiltValueField(wireName: 'reps')
  String get reps;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PersonalModel.serializer, this));
  }

  static PersonalModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PersonalModel.serializer, json.decode(jsonString));
  }

  static Serializer<PersonalModel> get serializer => _$personalModelSerializer;
}
