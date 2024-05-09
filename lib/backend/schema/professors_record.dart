import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ProfessorsRecord extends FirestoreRecord {
  ProfessorsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "ResearchInterest" field.
  String? _researchInterest;
  String get researchInterest => _researchInterest ?? '';
  bool hasResearchInterest() => _researchInterest != null;

  // "Bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "meetinglink" field.
  String? _meetinglink;
  String get meetinglink => _meetinglink ?? '';
  bool hasMeetinglink() => _meetinglink != null;

  // "time1" field.
  String? _time1;
  String get time1 => _time1 ?? '';
  bool hasTime1() => _time1 != null;

  // "time2" field.
  String? _time2;
  String get time2 => _time2 ?? '';
  bool hasTime2() => _time2 != null;

  // "time3" field.
  String? _time3;
  String get time3 => _time3 ?? '';
  bool hasTime3() => _time3 != null;

  // "time4" field.
  String? _time4;
  String get time4 => _time4 ?? '';
  bool hasTime4() => _time4 != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _researchInterest = snapshotData['ResearchInterest'] as String?;
    _bio = snapshotData['Bio'] as String?;
    _image = snapshotData['Image'] as String?;
    _email = snapshotData['email'] as String?;
    _location = snapshotData['location'] as String?;
    _meetinglink = snapshotData['meetinglink'] as String?;
    _time1 = snapshotData['time1'] as String?;
    _time2 = snapshotData['time2'] as String?;
    _time3 = snapshotData['time3'] as String?;
    _time4 = snapshotData['time4'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('professors');

  static Stream<ProfessorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfessorsRecord.fromSnapshot(s));

  static Future<ProfessorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfessorsRecord.fromSnapshot(s));

  static ProfessorsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfessorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfessorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfessorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfessorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfessorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfessorsRecordData({
  String? name,
  String? researchInterest,
  String? bio,
  String? image,
  String? email,
  String? location,
  String? meetinglink,
  String? time1,
  String? time2,
  String? time3,
  String? time4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'ResearchInterest': researchInterest,
      'Bio': bio,
      'Image': image,
      'email': email,
      'location': location,
      'meetinglink': meetinglink,
      'time1': time1,
      'time2': time2,
      'time3': time3,
      'time4': time4,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfessorsRecordDocumentEquality implements Equality<ProfessorsRecord> {
  const ProfessorsRecordDocumentEquality();

  @override
  bool equals(ProfessorsRecord? e1, ProfessorsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.researchInterest == e2?.researchInterest &&
        e1?.bio == e2?.bio &&
        e1?.image == e2?.image &&
        e1?.email == e2?.email &&
        e1?.location == e2?.location &&
        e1?.meetinglink == e2?.meetinglink &&
        e1?.time1 == e2?.time1 &&
        e1?.time2 == e2?.time2 &&
        e1?.time3 == e2?.time3 &&
        e1?.time4 == e2?.time4;
  }

  @override
  int hash(ProfessorsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.researchInterest,
        e?.bio,
        e?.image,
        e?.email,
        e?.location,
        e?.meetinglink,
        e?.time1,
        e?.time2,
        e?.time3,
        e?.time4
      ]);

  @override
  bool isValidKey(Object? o) => o is ProfessorsRecord;
}
