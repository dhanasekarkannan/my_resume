library work_model;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'work_model.g.dart';

abstract class WorkModel implements Built<WorkModel, WorkModelBuilder> {
  WorkModel._();

  factory WorkModel([updates(WorkModelBuilder b)]) = _$WorkModel;

  @BuiltValueField(wireName: 'workDesg')
  String get workDesg;
  @BuiltValueField(wireName: 'workEnd')
  String get workEnd;
  @BuiltValueField(wireName: 'workId')
  String get workId;
  @BuiltValueField(wireName: 'workLoc')
  String get workLoc;
  @BuiltValueField(wireName: 'workLogoUrl')
  String? get workLogoUrl;
  @BuiltValueField(wireName: 'workName')
  String get workName;
  @BuiltValueField(wireName: 'workStart')
  String get workStart;
  String toJson() {
    return json.encode(serializers.serializeWith(WorkModel.serializer, this));
  }

  static WorkModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        WorkModel.serializer, json.decode(jsonString));
  }

  static Serializer<WorkModel> get serializer => _$workModelSerializer;
}
