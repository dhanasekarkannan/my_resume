// GENERATED CODE - DO NOT MODIFY BY HAND

part of peronal_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PersonalModel> _$personalModelSerializer =
    new _$PersonalModelSerializer();

class _$PersonalModelSerializer implements StructuredSerializer<PersonalModel> {
  @override
  final Iterable<Type> types = const [PersonalModel, _$PersonalModel];
  @override
  final String wireName = 'PersonalModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, PersonalModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'bronze',
      serializers.serialize(object.bronze,
          specifiedType: const FullType(String)),
      'silver',
      serializers.serialize(object.silver,
          specifiedType: const FullType(String)),
      'gold',
      serializers.serialize(object.gold, specifiedType: const FullType(String)),
      'reps',
      serializers.serialize(object.reps, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PersonalModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PersonalModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bronze':
          result.bronze = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'silver':
          result.silver = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gold':
          result.gold = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reps':
          result.reps = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PersonalModel extends PersonalModel {
  @override
  final String bronze;
  @override
  final String silver;
  @override
  final String gold;
  @override
  final String reps;

  factory _$PersonalModel([void Function(PersonalModelBuilder)? updates]) =>
      (new PersonalModelBuilder()..update(updates)).build();

  _$PersonalModel._(
      {required this.bronze,
      required this.silver,
      required this.gold,
      required this.reps})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(bronze, 'PersonalModel', 'bronze');
    BuiltValueNullFieldError.checkNotNull(silver, 'PersonalModel', 'silver');
    BuiltValueNullFieldError.checkNotNull(gold, 'PersonalModel', 'gold');
    BuiltValueNullFieldError.checkNotNull(reps, 'PersonalModel', 'reps');
  }

  @override
  PersonalModel rebuild(void Function(PersonalModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonalModelBuilder toBuilder() => new PersonalModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonalModel &&
        bronze == other.bronze &&
        silver == other.silver &&
        gold == other.gold &&
        reps == other.reps;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, bronze.hashCode), silver.hashCode), gold.hashCode),
        reps.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PersonalModel')
          ..add('bronze', bronze)
          ..add('silver', silver)
          ..add('gold', gold)
          ..add('reps', reps))
        .toString();
  }
}

class PersonalModelBuilder
    implements Builder<PersonalModel, PersonalModelBuilder> {
  _$PersonalModel? _$v;

  String? _bronze;
  String? get bronze => _$this._bronze;
  set bronze(String? bronze) => _$this._bronze = bronze;

  String? _silver;
  String? get silver => _$this._silver;
  set silver(String? silver) => _$this._silver = silver;

  String? _gold;
  String? get gold => _$this._gold;
  set gold(String? gold) => _$this._gold = gold;

  String? _reps;
  String? get reps => _$this._reps;
  set reps(String? reps) => _$this._reps = reps;

  PersonalModelBuilder();

  PersonalModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bronze = $v.bronze;
      _silver = $v.silver;
      _gold = $v.gold;
      _reps = $v.reps;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonalModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PersonalModel;
  }

  @override
  void update(void Function(PersonalModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PersonalModel build() {
    final _$result = _$v ??
        new _$PersonalModel._(
            bronze: BuiltValueNullFieldError.checkNotNull(
                bronze, 'PersonalModel', 'bronze'),
            silver: BuiltValueNullFieldError.checkNotNull(
                silver, 'PersonalModel', 'silver'),
            gold: BuiltValueNullFieldError.checkNotNull(
                gold, 'PersonalModel', 'gold'),
            reps: BuiltValueNullFieldError.checkNotNull(
                reps, 'PersonalModel', 'reps'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
