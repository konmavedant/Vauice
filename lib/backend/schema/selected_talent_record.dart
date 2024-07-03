import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedTalentRecord extends FirestoreRecord {
  SelectedTalentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name_talent" field.
  String? _nameTalent;
  String get nameTalent => _nameTalent ?? '';
  bool hasNameTalent() => _nameTalent != null;

  // "age_talent" field.
  int? _ageTalent;
  int get ageTalent => _ageTalent ?? 0;
  bool hasAgeTalent() => _ageTalent != null;

  // "timetalentSelected" field.
  DateTime? _timetalentSelected;
  DateTime? get timetalentSelected => _timetalentSelected;
  bool hasTimetalentSelected() => _timetalentSelected != null;

  void _initializeFields() {
    _nameTalent = snapshotData['name_talent'] as String?;
    _ageTalent = castToType<int>(snapshotData['age_talent']);
    _timetalentSelected = snapshotData['timetalentSelected'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SelectedTalent');

  static Stream<SelectedTalentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SelectedTalentRecord.fromSnapshot(s));

  static Future<SelectedTalentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SelectedTalentRecord.fromSnapshot(s));

  static SelectedTalentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SelectedTalentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SelectedTalentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SelectedTalentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SelectedTalentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SelectedTalentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSelectedTalentRecordData({
  String? nameTalent,
  int? ageTalent,
  DateTime? timetalentSelected,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name_talent': nameTalent,
      'age_talent': ageTalent,
      'timetalentSelected': timetalentSelected,
    }.withoutNulls,
  );

  return firestoreData;
}

class SelectedTalentRecordDocumentEquality
    implements Equality<SelectedTalentRecord> {
  const SelectedTalentRecordDocumentEquality();

  @override
  bool equals(SelectedTalentRecord? e1, SelectedTalentRecord? e2) {
    return e1?.nameTalent == e2?.nameTalent &&
        e1?.ageTalent == e2?.ageTalent &&
        e1?.timetalentSelected == e2?.timetalentSelected;
  }

  @override
  int hash(SelectedTalentRecord? e) => const ListEquality()
      .hash([e?.nameTalent, e?.ageTalent, e?.timetalentSelected]);

  @override
  bool isValidKey(Object? o) => o is SelectedTalentRecord;
}
