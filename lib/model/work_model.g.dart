// GENERATED CODE - DO NOT MODIFY BY HAND

part of work_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkModel> _$workModelSerializer = new _$WorkModelSerializer();

class _$WorkModelSerializer implements StructuredSerializer<WorkModel> {
  @override
  final Iterable<Type> types = const [WorkModel, _$WorkModel];
  @override
  final String wireName = 'WorkModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WorkModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'workDesg',
      serializers.serialize(object.workDesg,
          specifiedType: const FullType(String)),
      'workEnd',
      serializers.serialize(object.workEnd,
          specifiedType: const FullType(String)),
      'workId',
      serializers.serialize(object.workId,
          specifiedType: const FullType(String)),
      'workLoc',
      serializers.serialize(object.workLoc,
          specifiedType: const FullType(String)),
      'workName',
      serializers.serialize(object.workName,
          specifiedType: const FullType(String)),
      'workStart',
      serializers.serialize(object.workStart,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.workLogoUrl;
    if (value != null) {
      result
        ..add('workLogoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WorkModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'workDesg':
          result.workDesg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'workEnd':
          result.workEnd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'workId':
          result.workId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'workLoc':
          result.workLoc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'workLogoUrl':
          result.workLogoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'workName':
          result.workName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'workStart':
          result.workStart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$WorkModel extends WorkModel {
  @override
  final String workDesg;
  @override
  final String workEnd;
  @override
  final String workId;
  @override
  final String workLoc;
  @override
  final String? workLogoUrl;
  @override
  final String workName;
  @override
  final String workStart;

  factory _$WorkModel([void Function(WorkModelBuilder)? updates]) =>
      (new WorkModelBuilder()..update(updates)).build();

  _$WorkModel._(
      {required this.workDesg,
      required this.workEnd,
      required this.workId,
      required this.workLoc,
      this.workLogoUrl,
      required this.workName,
      required this.workStart})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(workDesg, 'WorkModel', 'workDesg');
    BuiltValueNullFieldError.checkNotNull(workEnd, 'WorkModel', 'workEnd');
    BuiltValueNullFieldError.checkNotNull(workId, 'WorkModel', 'workId');
    BuiltValueNullFieldError.checkNotNull(workLoc, 'WorkModel', 'workLoc');
    BuiltValueNullFieldError.checkNotNull(workName, 'WorkModel', 'workName');
    BuiltValueNullFieldError.checkNotNull(workStart, 'WorkModel', 'workStart');
  }

  @override
  WorkModel rebuild(void Function(WorkModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkModelBuilder toBuilder() => new WorkModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkModel &&
        workDesg == other.workDesg &&
        workEnd == other.workEnd &&
        workId == other.workId &&
        workLoc == other.workLoc &&
        workLogoUrl == other.workLogoUrl &&
        workName == other.workName &&
        workStart == other.workStart;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, workDesg.hashCode), workEnd.hashCode),
                        workId.hashCode),
                    workLoc.hashCode),
                workLogoUrl.hashCode),
            workName.hashCode),
        workStart.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkModel')
          ..add('workDesg', workDesg)
          ..add('workEnd', workEnd)
          ..add('workId', workId)
          ..add('workLoc', workLoc)
          ..add('workLogoUrl', workLogoUrl)
          ..add('workName', workName)
          ..add('workStart', workStart))
        .toString();
  }
}

class WorkModelBuilder implements Builder<WorkModel, WorkModelBuilder> {
  _$WorkModel? _$v;

  String? _workDesg;
  String? get workDesg => _$this._workDesg;
  set workDesg(String? workDesg) => _$this._workDesg = workDesg;

  String? _workEnd;
  String? get workEnd => _$this._workEnd;
  set workEnd(String? workEnd) => _$this._workEnd = workEnd;

  String? _workId;
  String? get workId => _$this._workId;
  set workId(String? workId) => _$this._workId = workId;

  String? _workLoc;
  String? get workLoc => _$this._workLoc;
  set workLoc(String? workLoc) => _$this._workLoc = workLoc;

  String? _workLogoUrl;
  String? get workLogoUrl => _$this._workLogoUrl;
  set workLogoUrl(String? workLogoUrl) => _$this._workLogoUrl = workLogoUrl;

  String? _workName;
  String? get workName => _$this._workName;
  set workName(String? workName) => _$this._workName = workName;

  String? _workStart;
  String? get workStart => _$this._workStart;
  set workStart(String? workStart) => _$this._workStart = workStart;

  WorkModelBuilder();

  WorkModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workDesg = $v.workDesg;
      _workEnd = $v.workEnd;
      _workId = $v.workId;
      _workLoc = $v.workLoc;
      _workLogoUrl = $v.workLogoUrl;
      _workName = $v.workName;
      _workStart = $v.workStart;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkModel;
  }

  @override
  void update(void Function(WorkModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkModel build() {
    final _$result = _$v ??
        new _$WorkModel._(
            workDesg: BuiltValueNullFieldError.checkNotNull(
                workDesg, 'WorkModel', 'workDesg'),
            workEnd: BuiltValueNullFieldError.checkNotNull(
                workEnd, 'WorkModel', 'workEnd'),
            workId: BuiltValueNullFieldError.checkNotNull(
                workId, 'WorkModel', 'workId'),
            workLoc: BuiltValueNullFieldError.checkNotNull(
                workLoc, 'WorkModel', 'workLoc'),
            workLogoUrl: workLogoUrl,
            workName: BuiltValueNullFieldError.checkNotNull(
                workName, 'WorkModel', 'workName'),
            workStart: BuiltValueNullFieldError.checkNotNull(
                workStart, 'WorkModel', 'workStart'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
