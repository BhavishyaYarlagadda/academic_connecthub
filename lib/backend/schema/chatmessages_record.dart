import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ChatmessagesRecord extends FirestoreRecord {
  ChatmessagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "chatuser" field.
  DocumentReference? _chatuser;
  DocumentReference? get chatuser => _chatuser;
  bool hasChatuser() => _chatuser != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _chatuser = snapshotData['chatuser'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _text = snapshotData['text'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chatmessages');

  static Stream<ChatmessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatmessagesRecord.fromSnapshot(s));

  static Future<ChatmessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatmessagesRecord.fromSnapshot(s));

  static ChatmessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatmessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatmessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatmessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatmessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatmessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatmessagesRecordData({
  DocumentReference? user,
  DocumentReference? chatuser,
  DateTime? timestamp,
  String? image,
  String? text,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'chatuser': chatuser,
      'timestamp': timestamp,
      'image': image,
      'text': text,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatmessagesRecordDocumentEquality
    implements Equality<ChatmessagesRecord> {
  const ChatmessagesRecordDocumentEquality();

  @override
  bool equals(ChatmessagesRecord? e1, ChatmessagesRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.chatuser == e2?.chatuser &&
        e1?.timestamp == e2?.timestamp &&
        e1?.image == e2?.image &&
        e1?.text == e2?.text;
  }

  @override
  int hash(ChatmessagesRecord? e) => const ListEquality()
      .hash([e?.user, e?.chatuser, e?.timestamp, e?.image, e?.text]);

  @override
  bool isValidKey(Object? o) => o is ChatmessagesRecord;
}
