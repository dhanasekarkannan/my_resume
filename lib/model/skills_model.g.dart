// GENERATED CODE - DO NOT MODIFY BY HAND

part of skills_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SkillsModel> _$skillsModelSerializer = new _$SkillsModelSerializer();

class _$SkillsModelSerializer implements StructuredSerializer<SkillsModel> {
  @override
  final Iterable<Type> types = const [SkillsModel, _$SkillsModel];
  @override
  final String wireName = 'SkillsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SkillsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'skillId',
      serializers.serialize(object.skillId,
          specifiedType: const FullType(String)),
      'skillKey',
      serializers.serialize(object.skillKey,
          specifiedType: const FullType(String)),
      'skillPercnt',
      serializers.serialize(object.skillPercnt,
          specifiedType: const FullType(String)),
      'skillTitle',
      serializers.serialize(object.skillTitle,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SkillsModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SkillsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'skillId':
          result.skillId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'skillKey':
          result.skillKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'skillPercnt':
          result.skillPercnt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'skillTitle':
          result.skillTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SkillsModel extends SkillsModel {
  @override
  final String skillId;
  @override
  final String skillKey;
  @override
  final String skillPercnt;
  @override
  final String skillTitle;

  factory _$SkillsModel([void Function(SkillsModelBuilder)? updates]) =>
      (new SkillsModelBuilder()..update(updates)).build();

  _$SkillsModel._(
      {required this.skillId,
      required this.skillKey,
      required this.skillPercnt,
      required this.skillTitle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(skillId, 'SkillsModel', 'skillId');
    BuiltValueNullFieldError.checkNotNull(skillKey, 'SkillsModel', 'skillKey');
    BuiltValueNullFieldError.checkNotNull(
        skillPercnt, 'SkillsModel', 'skillPercnt');
    BuiltValueNullFieldError.checkNotNull(
        skillTitle, 'SkillsModel', 'skillTitle');
  }

  @override
  SkillsModel rebuild(void Function(SkillsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillsModelBuilder toBuilder() => new SkillsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkillsModel &&
        skillId == other.skillId &&
        skillKey == other.skillKey &&
        skillPercnt == other.skillPercnt &&
        skillTitle == other.skillTitle;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, skillId.hashCode), skillKey.hashCode),
            skillPercnt.hashCode),
        skillTitle.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SkillsModel')
          ..add('skillId', skillId)
          ..add('skillKey', skillKey)
          ..add('skillPercnt', skillPercnt)
          ..add('skillTitle', skillTitle))
        .toString();
  }
}

class SkillsModelBuilder implements Builder<SkillsModel, SkillsModelBuilder> {
  _$SkillsModel? _$v;

  String? _skillId;
  String? get skillId => _$this._skillId;
  set skillId(String? skillId) => _$this._skillId = skillId;

  String? _skillKey;
  String? get skillKey => _$this._skillKey;
  set skillKey(String? skillKey) => _$this._skillKey = skillKey;

  String? _skillPercnt;
  String? get skillPercnt => _$this._skillPercnt;
  set skillPercnt(String? skillPercnt) => _$this._skillPercnt = skillPercnt;

  String? _skillTitle;
  String? get skillTitle => _$this._skillTitle;
  set skillTitle(String? skillTitle) => _$this._skillTitle = skillTitle;

  SkillsModelBuilder();

  SkillsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skillId = $v.skillId;
      _skillKey = $v.skillKey;
      _skillPercnt = $v.skillPercnt;
      _skillTitle = $v.skillTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SkillsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SkillsModel;
  }

  @override
  void update(void Function(SkillsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SkillsModel build() {
    final _$result = _$v ??
        new _$SkillsModel._(
            skillId: BuiltValueNullFieldError.checkNotNull(
                skillId, 'SkillsModel', 'skillId'),
            skillKey: BuiltValueNullFieldError.checkNotNull(
                skillKey, 'SkillsModel', 'skillKey'),
            skillPercnt: BuiltValueNullFieldError.checkNotNull(
                skillPercnt, 'SkillsModel', 'skillPercnt'),
            skillTitle: BuiltValueNullFieldError.checkNotNull(
                skillTitle, 'SkillsModel', 'skillTitle'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
