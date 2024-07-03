import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TalentsRecord extends FirestoreRecord {
  TalentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "profile_photo" field.
  String? _profilePhoto;
  String get profilePhoto => _profilePhoto ?? '';
  bool hasProfilePhoto() => _profilePhoto != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "email_id" field.
  String? _emailId;
  String get emailId => _emailId ?? '';
  bool hasEmailId() => _emailId != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _profilePhoto = snapshotData['profile_photo'] as String?;
    _role = snapshotData['role'] as String?;
    _emailId = snapshotData['email_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Talents');

  static Stream<TalentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TalentsRecord.fromSnapshot(s));

  static Future<TalentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TalentsRecord.fromSnapshot(s));

  static TalentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TalentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TalentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TalentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TalentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TalentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTalentsRecordData({
  String? displayName,
  int? age,
  String? profilePhoto,
  String? role,
  String? emailId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'age': age,
      'profile_photo': profilePhoto,
      'role': role,
      'email_id': emailId,
    }.withoutNulls,
  );

  return firestoreData;
}

class TalentsRecordDocumentEquality implements Equality<TalentsRecord> {
  const TalentsRecordDocumentEquality();

  @override
  bool equals(TalentsRecord? e1, TalentsRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.age == e2?.age &&
        e1?.profilePhoto == e2?.profilePhoto &&
        e1?.role == e2?.role &&
        e1?.emailId == e2?.emailId;
  }

  @override
  int hash(TalentsRecord? e) => const ListEquality()
      .hash([e?.displayName, e?.age, e?.profilePhoto, e?.role, e?.emailId]);

  @override
  bool isValidKey(Object? o) => o is TalentsRecord;
}
