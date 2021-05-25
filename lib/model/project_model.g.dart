// GENERATED CODE - DO NOT MODIFY BY HAND

part of project_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectModel> _$projectModelSerializer =
    new _$ProjectModelSerializer();

class _$ProjectModelSerializer implements StructuredSerializer<ProjectModel> {
  @override
  final Iterable<Type> types = const [ProjectModel, _$ProjectModel];
  @override
  final String wireName = 'ProjectModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProjectModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'projClient',
      serializers.serialize(object.projClient,
          specifiedType: const FullType(String)),
      'projDesc',
      serializers.serialize(object.projDesc,
          specifiedType: const FullType(String)),
      'projId',
      serializers.serialize(object.projId,
          specifiedType: const FullType(String)),
      'projImgUrl',
      serializers.serialize(object.projImgUrl,
          specifiedType: const FullType(String)),
      'projName',
      serializers.serialize(object.projName,
          specifiedType: const FullType(String)),
      'projUrl',
      serializers.serialize(object.projUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ProjectModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'projClient':
          result.projClient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projDesc':
          result.projDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projId':
          result.projId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projImgUrl':
          result.projImgUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projName':
          result.projName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projUrl':
          result.projUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectModel extends ProjectModel {
  @override
  final String projClient;
  @override
  final String projDesc;
  @override
  final String projId;
  @override
  final String projImgUrl;
  @override
  final String projName;
  @override
  final String projUrl;

  factory _$ProjectModel([void Function(ProjectModelBuilder)? updates]) =>
      (new ProjectModelBuilder()..update(updates)).build();

  _$ProjectModel._(
      {required this.projClient,
      required this.projDesc,
      required this.projId,
      required this.projImgUrl,
      required this.projName,
      required this.projUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        projClient, 'ProjectModel', 'projClient');
    BuiltValueNullFieldError.checkNotNull(projDesc, 'ProjectModel', 'projDesc');
    BuiltValueNullFieldError.checkNotNull(projId, 'ProjectModel', 'projId');
    BuiltValueNullFieldError.checkNotNull(
        projImgUrl, 'ProjectModel', 'projImgUrl');
    BuiltValueNullFieldError.checkNotNull(projName, 'ProjectModel', 'projName');
    BuiltValueNullFieldError.checkNotNull(projUrl, 'ProjectModel', 'projUrl');
  }

  @override
  ProjectModel rebuild(void Function(ProjectModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectModelBuilder toBuilder() => new ProjectModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectModel &&
        projClient == other.projClient &&
        projDesc == other.projDesc &&
        projId == other.projId &&
        projImgUrl == other.projImgUrl &&
        projName == other.projName &&
        projUrl == other.projUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, projClient.hashCode), projDesc.hashCode),
                    projId.hashCode),
                projImgUrl.hashCode),
            projName.hashCode),
        projUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectModel')
          ..add('projClient', projClient)
          ..add('projDesc', projDesc)
          ..add('projId', projId)
          ..add('projImgUrl', projImgUrl)
          ..add('projName', projName)
          ..add('projUrl', projUrl))
        .toString();
  }
}

class ProjectModelBuilder
    implements Builder<ProjectModel, ProjectModelBuilder> {
  _$ProjectModel? _$v;

  String? _projClient;
  String? get projClient => _$this._projClient;
  set projClient(String? projClient) => _$this._projClient = projClient;

  String? _projDesc;
  String? get projDesc => _$this._projDesc;
  set projDesc(String? projDesc) => _$this._projDesc = projDesc;

  String? _projId;
  String? get projId => _$this._projId;
  set projId(String? projId) => _$this._projId = projId;

  String? _projImgUrl;
  String? get projImgUrl => _$this._projImgUrl;
  set projImgUrl(String? projImgUrl) => _$this._projImgUrl = projImgUrl;

  String? _projName;
  String? get projName => _$this._projName;
  set projName(String? projName) => _$this._projName = projName;

  String? _projUrl;
  String? get projUrl => _$this._projUrl;
  set projUrl(String? projUrl) => _$this._projUrl = projUrl;

  ProjectModelBuilder();

  ProjectModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projClient = $v.projClient;
      _projDesc = $v.projDesc;
      _projId = $v.projId;
      _projImgUrl = $v.projImgUrl;
      _projName = $v.projName;
      _projUrl = $v.projUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectModel;
  }

  @override
  void update(void Function(ProjectModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectModel build() {
    final _$result = _$v ??
        new _$ProjectModel._(
            projClient: BuiltValueNullFieldError.checkNotNull(
                projClient, 'ProjectModel', 'projClient'),
            projDesc: BuiltValueNullFieldError.checkNotNull(
                projDesc, 'ProjectModel', 'projDesc'),
            projId: BuiltValueNullFieldError.checkNotNull(
                projId, 'ProjectModel', 'projId'),
            projImgUrl: BuiltValueNullFieldError.checkNotNull(
                projImgUrl, 'ProjectModel', 'projImgUrl'),
            projName: BuiltValueNullFieldError.checkNotNull(
                projName, 'ProjectModel', 'projName'),
            projUrl: BuiltValueNullFieldError.checkNotNull(
                projUrl, 'ProjectModel', 'projUrl'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
