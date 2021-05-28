import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'appConfig_model.dart';
import 'app_model.dart';
import 'personal_model.dart';
import 'project_model.dart';
import 'skills_model.dart';
import 'work_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  AppModel,
  AppConfigModel,
  ProjectModel,
  PersonalModel,
  SkillsModel,
  WorkModel,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
