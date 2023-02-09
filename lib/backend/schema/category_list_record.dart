import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'category_list_record.g.dart';

abstract class CategoryListRecord
    implements Built<CategoryListRecord, CategoryListRecordBuilder> {
  static Serializer<CategoryListRecord> get serializer =>
      _$categoryListRecordSerializer;

  BuiltList<String>? get categoryList;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoryListRecordBuilder builder) =>
      builder..categoryList = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categoryList');

  static Stream<CategoryListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoryListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoryListRecord._();
  factory CategoryListRecord(
          [void Function(CategoryListRecordBuilder) updates]) =
      _$CategoryListRecord;

  static CategoryListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoryListRecordData() {
  final firestoreData = serializers.toFirestore(
    CategoryListRecord.serializer,
    CategoryListRecord(
      (c) => c..categoryList = null,
    ),
  );

  return firestoreData;
}
