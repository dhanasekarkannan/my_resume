// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppModel> _$appModelSerializer = new _$AppModelSerializer();

class _$AppModelSerializer implements StructuredSerializer<AppModel> {
  @override
  final Iterable<Type> types = const [AppModel, _$AppModel];
  @override
  final String wireName = 'AppModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'android',
      serializers.serialize(object.android,
          specifiedType: const FullType(AppConfigModel)),
    ];

    return result;
  }

  @override
  AppModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'android':
          result.android.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AppConfigModel))!
              as AppConfigModel);
          break;
      }
    }

    return result.build();
  }
}

class _$AppModel extends AppModel {
  @override
  final AppConfigModel android;

  factory _$AppModel([void Function(AppModelBuilder)? updates]) =>
      (new AppModelBuilder()..update(updates)).build();

  _$AppModel._({required this.android}) : super._() {
    BuiltValueNullFieldError.checkNotNull(android, 'AppModel', 'android');
  }

  @override
  AppModel rebuild(void Function(AppModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppModelBuilder toBuilder() => new AppModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppModel && android == other.android;
  }

  @override
  int get hashCode {
    return $jf($jc(0, android.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppModel')..add('android', android))
        .toString();
  }
}

class AppModelBuilder implements Builder<AppModel, AppModelBuilder> {
  _$AppModel? _$v;

  AppConfigModelBuilder? _android;
  AppConfigModelBuilder get android =>
      _$this._android ??= new AppConfigModelBuilder();
  set android(AppConfigModelBuilder? android) => _$this._android = android;

  AppModelBuilder();

  AppModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _android = $v.android.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppModel;
  }

  @override
  void update(void Function(AppModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppModel build() {
    _$AppModel _$result;
    try {
      _$result = _$v ?? new _$AppModel._(android: android.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'android';
        android.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
