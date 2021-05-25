library app_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'appConfig_model.dart';
import 'serializers.dart';

part 'app_model.g.dart';

abstract class AppModel implements Built<AppModel, AppModelBuilder> {
  AppModel._();

  factory AppModel([updates(AppModelBuilder b)]) = _$AppModel;

  @BuiltValueField(wireName: 'android')
  AppConfigModel get android;
  String toJson() {
    return json.encode(serializers.serializeWith(AppModel.serializer, this));
  }

  static AppModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppModel.serializer, json.decode(jsonString));
  }

  static Serializer<AppModel> get serializer => _$appModelSerializer;
}

