import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userA" field.
  DocumentReference? _userA;
  DocumentReference? get userA => _userA;
  bool hasUserA() => _userA != null;

  // "userB" field.
  DocumentReference? _userB;
  DocumentReference? get userB => _userB;
  bool hasUserB() => _userB != null;

  // "lastmessage" field.
  String? _lastmessage;
  String get lastmessage => _lastmessage ?? '';
  bool hasLastmessage() => _lastmessage != null;

  // "lastmessagetime" field.
  DateTime? _lastmessagetime;
  DateTime? get lastmessagetime => _lastmessagetime;
  bool hasLastmessagetime() => _lastmessagetime != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _userA = snapshotData['userA'] as DocumentReference?;
    _userB = snapshotData['userB'] as DocumentReference?;
    _lastmessage = snapshotData['lastmessage'] as String?;
    _lastmessagetime = snapshotData['lastmessagetime'] as DateTime?;
    _image = snapshotData['Image'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  DocumentReference? userA,
  DocumentReference? userB,
  String? lastmessage,
  DateTime? lastmessagetime,
  String? image,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userA': userA,
      'userB': userB,
      'lastmessage': lastmessage,
      'lastmessagetime': lastmessagetime,
      'Image': image,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    return e1?.userA == e2?.userA &&
        e1?.userB == e2?.userB &&
        e1?.lastmessage == e2?.lastmessage &&
        e1?.lastmessagetime == e2?.lastmessagetime &&
        e1?.image == e2?.image &&
        e1?.user == e2?.user;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.userA,
        e?.userB,
        e?.lastmessage,
        e?.lastmessagetime,
        e?.image,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
