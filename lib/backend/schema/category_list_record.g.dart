// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryListRecord> _$categoryListRecordSerializer =
    new _$CategoryListRecordSerializer();

class _$CategoryListRecordSerializer
    implements StructuredSerializer<CategoryListRecord> {
  @override
  final Iterable<Type> types = const [CategoryListRecord, _$CategoryListRecord];
  @override
  final String wireName = 'CategoryListRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CategoryListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.categoryList;
    if (value != null) {
      result
        ..add('categoryList')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CategoryListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'categoryList':
          result.categoryList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryListRecord extends CategoryListRecord {
  @override
  final BuiltList<String>? categoryList;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoryListRecord(
          [void Function(CategoryListRecordBuilder)? updates]) =>
      (new CategoryListRecordBuilder()..update(updates))._build();

  _$CategoryListRecord._({this.categoryList, this.ffRef}) : super._();

  @override
  CategoryListRecord rebuild(
          void Function(CategoryListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryListRecordBuilder toBuilder() =>
      new CategoryListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryListRecord &&
        categoryList == other.categoryList &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, categoryList.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryListRecord')
          ..add('categoryList', categoryList)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoryListRecordBuilder
    implements Builder<CategoryListRecord, CategoryListRecordBuilder> {
  _$CategoryListRecord? _$v;

  ListBuilder<String>? _categoryList;
  ListBuilder<String> get categoryList =>
      _$this._categoryList ??= new ListBuilder<String>();
  set categoryList(ListBuilder<String>? categoryList) =>
      _$this._categoryList = categoryList;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoryListRecordBuilder() {
    CategoryListRecord._initializeBuilder(this);
  }

  CategoryListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryList = $v.categoryList?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryListRecord;
  }

  @override
  void update(void Function(CategoryListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryListRecord build() => _build();

  _$CategoryListRecord _build() {
    _$CategoryListRecord _$result;
    try {
      _$result = _$v ??
          new _$CategoryListRecord._(
              categoryList: _categoryList?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categoryList';
        _categoryList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CategoryListRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
