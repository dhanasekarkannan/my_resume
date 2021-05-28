library skills_model;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'skills_model.g.dart';

abstract class SkillsModel implements Built<SkillsModel, SkillsModelBuilder> {
  SkillsModel._();

  factory SkillsModel([updates(SkillsModelBuilder b)]) = _$SkillsModel;

  @BuiltValueField(wireName: 'skillId')
  String get skillId;
  @BuiltValueField(wireName: 'skillKey')
  String get skillKey;
  @BuiltValueField(wireName: 'skillPercnt')
  String get skillPercnt;
  @BuiltValueField(wireName: 'skillTitle')
  String get skillTitle;
  String toJson() {
    return json.encode(serializers.serializeWith(SkillsModel.serializer, this));
  }

  static SkillsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SkillsModel.serializer, json.decode(jsonString));
  }

  static Serializer<SkillsModel> get serializer => _$skillsModelSerializer;
}
