library project_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'project_model.g.dart';

abstract class ProjectModel
    implements Built<ProjectModel, ProjectModelBuilder> {
  ProjectModel._();

  factory ProjectModel([updates(ProjectModelBuilder b)]) = _$ProjectModel;

  @BuiltValueField(wireName: 'projClient')
  String get projClient;
  @BuiltValueField(wireName: 'projDesc')
  String get projDesc;
  @BuiltValueField(wireName: 'projId')
  String get projId;
  @BuiltValueField(wireName: 'projImgUrl')
  String get projImgUrl;
  @BuiltValueField(wireName: 'projName')
  String get projName;
  @BuiltValueField(wireName: 'projUrl')
  String get projUrl;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ProjectModel.serializer, this));
  }

  static ProjectModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProjectModel.serializer, json.decode(jsonString));
  }

  static Serializer<ProjectModel> get serializer => _$projectModelSerializer;
}


