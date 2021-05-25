// GENERATED CODE - DO NOT MODIFY BY HAND

part of appConfig_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppConfigModel> _$appConfigModelSerializer =
    new _$AppConfigModelSerializer();

class _$AppConfigModelSerializer
    implements StructuredSerializer<AppConfigModel> {
  @override
  final Iterable<Type> types = const [AppConfigModel, _$AppConfigModel];
  @override
  final String wireName = 'AppConfigModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppConfigModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'appURL',
      serializers.serialize(object.appURL,
          specifiedType: const FullType(String)),
      'priority',
      serializers.serialize(object.priority,
          specifiedType: const FullType(String)),
      'updateMsg',
      serializers.serialize(object.updateMsg,
          specifiedType: const FullType(String)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AppConfigModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppConfigModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'appURL':
          result.appURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updateMsg':
          result.updateMsg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppConfigModel extends AppConfigModel {
  @override
  final String appURL;
  @override
  final String priority;
  @override
  final String updateMsg;
  @override
  final String version;

  factory _$AppConfigModel([void Function(AppConfigModelBuilder)? updates]) =>
      (new AppConfigModelBuilder()..update(updates)).build();

  _$AppConfigModel._(
      {required this.appURL,
      required this.priority,
      required this.updateMsg,
      required this.version})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(appURL, 'AppConfigModel', 'appURL');
    BuiltValueNullFieldError.checkNotNull(
        priority, 'AppConfigModel', 'priority');
    BuiltValueNullFieldError.checkNotNull(
        updateMsg, 'AppConfigModel', 'updateMsg');
    BuiltValueNullFieldError.checkNotNull(version, 'AppConfigModel', 'version');
  }

  @override
  AppConfigModel rebuild(void Function(AppConfigModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppConfigModelBuilder toBuilder() =>
      new AppConfigModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppConfigModel &&
        appURL == other.appURL &&
        priority == other.priority &&
        updateMsg == other.updateMsg &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, appURL.hashCode), priority.hashCode),
            updateMsg.hashCode),
        version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppConfigModel')
          ..add('appURL', appURL)
          ..add('priority', priority)
          ..add('updateMsg', updateMsg)
          ..add('version', version))
        .toString();
  }
}

class AppConfigModelBuilder
    implements Builder<AppConfigModel, AppConfigModelBuilder> {
  _$AppConfigModel? _$v;

  String? _appURL;
  String? get appURL => _$this._appURL;
  set appURL(String? appURL) => _$this._appURL = appURL;

  String? _priority;
  String? get priority => _$this._priority;
  set priority(String? priority) => _$this._priority = priority;

  String? _updateMsg;
  String? get updateMsg => _$this._updateMsg;
  set updateMsg(String? updateMsg) => _$this._updateMsg = updateMsg;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  AppConfigModelBuilder();

  AppConfigModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appURL = $v.appURL;
      _priority = $v.priority;
      _updateMsg = $v.updateMsg;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppConfigModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppConfigModel;
  }

  @override
  void update(void Function(AppConfigModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppConfigModel build() {
    final _$result = _$v ??
        new _$AppConfigModel._(
            appURL: BuiltValueNullFieldError.checkNotNull(
                appURL, 'AppConfigModel', 'appURL'),
            priority: BuiltValueNullFieldError.checkNotNull(
                priority, 'AppConfigModel', 'priority'),
            updateMsg: BuiltValueNullFieldError.checkNotNull(
                updateMsg, 'AppConfigModel', 'updateMsg'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, 'AppConfigModel', 'version'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
