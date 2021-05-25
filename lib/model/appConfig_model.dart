library appConfig_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'appConfig_model.g.dart';

abstract class AppConfigModel implements Built<AppConfigModel, AppConfigModelBuilder> {
  AppConfigModel._();

  factory AppConfigModel([updates(AppConfigModelBuilder b)]) = _$AppConfigModel;

  @BuiltValueField(wireName: 'appURL')
  String get appURL;
  @BuiltValueField(wireName: 'priority')
  String get priority;
  @BuiltValueField(wireName: 'updateMsg')
  String get updateMsg;
  @BuiltValueField(wireName: 'version')
  String get version;
  String toJson() {
    return json.encode(serializers.serializeWith(AppConfigModel.serializer, this));
  }

  static AppConfigModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppConfigModel.serializer, json.decode(jsonString));
  }

  static Serializer<AppConfigModel> get serializer => _$appConfigModelSerializer;
}