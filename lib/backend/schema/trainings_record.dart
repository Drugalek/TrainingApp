import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrainingsRecord extends FirestoreRecord {
  TrainingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "exercises" field.
  String? _exercises;
  String get exercises => _exercises ?? '';
  bool hasExercises() => _exercises != null;

  void _initializeFields() {
    _exercises = snapshotData['exercises'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trainings');

  static Stream<TrainingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrainingsRecord.fromSnapshot(s));

  static Future<TrainingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrainingsRecord.fromSnapshot(s));

  static TrainingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrainingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrainingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrainingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrainingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrainingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrainingsRecordData({
  String? exercises,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'exercises': exercises,
    }.withoutNulls,
  );

  return firestoreData;
}
