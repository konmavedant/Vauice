import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileInfoRecord extends FirestoreRecord {
  ProfileInfoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "profile_photo" field.
  String? _profilePhoto;
  String get profilePhoto => _profilePhoto ?? '';
  bool hasProfilePhoto() => _profilePhoto != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _profilePhoto = snapshotData['profile_photo'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('profile_info');

  static Stream<ProfileInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfileInfoRecord.fromSnapshot(s));

  static Future<ProfileInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfileInfoRecord.fromSnapshot(s));

  static ProfileInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfileInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfileInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfileInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfileInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfileInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfileInfoRecordData({
  String? name,
  String? profilePhoto,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'profile_photo': profilePhoto,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfileInfoRecordDocumentEquality implements Equality<ProfileInfoRecord> {
  const ProfileInfoRecordDocumentEquality();

  @override
  bool equals(ProfileInfoRecord? e1, ProfileInfoRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.profilePhoto == e2?.profilePhoto &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(ProfileInfoRecord? e) =>
      const ListEquality().hash([e?.name, e?.profilePhoto, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is ProfileInfoRecord;
}
