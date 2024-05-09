import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "professorname" field.
  String? _professorname;
  String get professorname => _professorname ?? '';
  bool hasProfessorname() => _professorname != null;

  // "studentname" field.
  String? _studentname;
  String get studentname => _studentname ?? '';
  bool hasStudentname() => _studentname != null;

  // "professorimage" field.
  String? _professorimage;
  String get professorimage => _professorimage ?? '';
  bool hasProfessorimage() => _professorimage != null;

  // "researchinterest" field.
  String? _researchinterest;
  String get researchinterest => _researchinterest ?? '';
  bool hasResearchinterest() => _researchinterest != null;

  // "orderdate" field.
  DateTime? _orderdate;
  DateTime? get orderdate => _orderdate;
  bool hasOrderdate() => _orderdate != null;

  // "orderID" field.
  String? _orderID;
  String get orderID => _orderID ?? '';
  bool hasOrderID() => _orderID != null;

  // "meetinglink" field.
  String? _meetinglink;
  String get meetinglink => _meetinglink ?? '';
  bool hasMeetinglink() => _meetinglink != null;

  // "professoremail" field.
  String? _professoremail;
  String get professoremail => _professoremail ?? '';
  bool hasProfessoremail() => _professoremail != null;

  // "bookingdate" field.
  DateTime? _bookingdate;
  DateTime? get bookingdate => _bookingdate;
  bool hasBookingdate() => _bookingdate != null;

  // "bookingtime" field.
  String? _bookingtime;
  String get bookingtime => _bookingtime ?? '';
  bool hasBookingtime() => _bookingtime != null;

  // "studentemail" field.
  String? _studentemail;
  String get studentemail => _studentemail ?? '';
  bool hasStudentemail() => _studentemail != null;

  // "studentimage" field.
  String? _studentimage;
  String get studentimage => _studentimage ?? '';
  bool hasStudentimage() => _studentimage != null;

  void _initializeFields() {
    _professorname = snapshotData['professorname'] as String?;
    _studentname = snapshotData['studentname'] as String?;
    _professorimage = snapshotData['professorimage'] as String?;
    _researchinterest = snapshotData['researchinterest'] as String?;
    _orderdate = snapshotData['orderdate'] as DateTime?;
    _orderID = snapshotData['orderID'] as String?;
    _meetinglink = snapshotData['meetinglink'] as String?;
    _professoremail = snapshotData['professoremail'] as String?;
    _bookingdate = snapshotData['bookingdate'] as DateTime?;
    _bookingtime = snapshotData['bookingtime'] as String?;
    _studentemail = snapshotData['studentemail'] as String?;
    _studentimage = snapshotData['studentimage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  String? professorname,
  String? studentname,
  String? professorimage,
  String? researchinterest,
  DateTime? orderdate,
  String? orderID,
  String? meetinglink,
  String? professoremail,
  DateTime? bookingdate,
  String? bookingtime,
  String? studentemail,
  String? studentimage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'professorname': professorname,
      'studentname': studentname,
      'professorimage': professorimage,
      'researchinterest': researchinterest,
      'orderdate': orderdate,
      'orderID': orderID,
      'meetinglink': meetinglink,
      'professoremail': professoremail,
      'bookingdate': bookingdate,
      'bookingtime': bookingtime,
      'studentemail': studentemail,
      'studentimage': studentimage,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.professorname == e2?.professorname &&
        e1?.studentname == e2?.studentname &&
        e1?.professorimage == e2?.professorimage &&
        e1?.researchinterest == e2?.researchinterest &&
        e1?.orderdate == e2?.orderdate &&
        e1?.orderID == e2?.orderID &&
        e1?.meetinglink == e2?.meetinglink &&
        e1?.professoremail == e2?.professoremail &&
        e1?.bookingdate == e2?.bookingdate &&
        e1?.bookingtime == e2?.bookingtime &&
        e1?.studentemail == e2?.studentemail &&
        e1?.studentimage == e2?.studentimage;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.professorname,
        e?.studentname,
        e?.professorimage,
        e?.researchinterest,
        e?.orderdate,
        e?.orderID,
        e?.meetinglink,
        e?.professoremail,
        e?.bookingdate,
        e?.bookingtime,
        e?.studentemail,
        e?.studentimage
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
