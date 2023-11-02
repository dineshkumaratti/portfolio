import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreFactory {
  FirebaseFirestore? firebaseFirestore;
  Future create() async {
    firebaseFirestore = FirebaseFirestore.instance;
    return firebaseFirestore;
  }
}
