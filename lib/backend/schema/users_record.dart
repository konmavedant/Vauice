import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "date_of_birth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "profile_photo" field.
  String? _profilePhoto;
  String get profilePhoto => _profilePhoto ?? '';
  bool hasProfilePhoto() => _profilePhoto != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "upload_photo" field.
  String? _uploadPhoto;
  String get uploadPhoto => _uploadPhoto ?? '';
  bool hasUploadPhoto() => _uploadPhoto != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Linkd_url" field.
  String? _linkdUrl;
  String get linkdUrl => _linkdUrl ?? '';
  bool hasLinkdUrl() => _linkdUrl != null;

  // "Insta_url" field.
  String? _instaUrl;
  String get instaUrl => _instaUrl ?? '';
  bool hasInstaUrl() => _instaUrl != null;

  // "Fb_url" field.
  String? _fbUrl;
  String get fbUrl => _fbUrl ?? '';
  bool hasFbUrl() => _fbUrl != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _password = snapshotData['password'] as String?;
    _dateOfBirth = snapshotData['date_of_birth'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _name = snapshotData['name'] as String?;
    _profilePhoto = snapshotData['profile_photo'] as String?;
    _role = snapshotData['role'] as String?;
    _uploadPhoto = snapshotData['upload_photo'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _linkdUrl = snapshotData['Linkd_url'] as String?;
    _instaUrl = snapshotData['Insta_url'] as String?;
    _fbUrl = snapshotData['Fb_url'] as String?;
    _bio = snapshotData['bio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? uid,
  DateTime? createdTime,
  String? password,
  DateTime? dateOfBirth,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  int? age,
  String? name,
  String? profilePhoto,
  String? role,
  String? uploadPhoto,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? title,
  String? linkdUrl,
  String? instaUrl,
  String? fbUrl,
  String? bio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'created_time': createdTime,
      'password': password,
      'date_of_birth': dateOfBirth,
      'display_name': displayName,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'age': age,
      'name': name,
      'profile_photo': profilePhoto,
      'role': role,
      'upload_photo': uploadPhoto,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'title': title,
      'Linkd_url': linkdUrl,
      'Insta_url': instaUrl,
      'Fb_url': fbUrl,
      'bio': bio,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.password == e2?.password &&
        e1?.dateOfBirth == e2?.dateOfBirth &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.age == e2?.age &&
        e1?.name == e2?.name &&
        e1?.profilePhoto == e2?.profilePhoto &&
        e1?.role == e2?.role &&
        e1?.uploadPhoto == e2?.uploadPhoto &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.title == e2?.title &&
        e1?.linkdUrl == e2?.linkdUrl &&
        e1?.instaUrl == e2?.instaUrl &&
        e1?.fbUrl == e2?.fbUrl &&
        e1?.bio == e2?.bio;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.createdTime,
        e?.password,
        e?.dateOfBirth,
        e?.displayName,
        e?.photoUrl,
        e?.phoneNumber,
        e?.age,
        e?.name,
        e?.profilePhoto,
        e?.role,
        e?.uploadPhoto,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.title,
        e?.linkdUrl,
        e?.instaUrl,
        e?.fbUrl,
        e?.bio
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
