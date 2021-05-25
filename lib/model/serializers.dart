import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:dhana_resume/model/appConfig_model.dart';
import 'package:dhana_resume/model/app_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  AppModel,
  AppConfigModel,

])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();