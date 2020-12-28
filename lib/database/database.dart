import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final _fireStoreInst = FirebaseFirestore.instance;
final _firebaseStorage = FirebaseStorage.instance;

void saveUserInfoToFireStore(
    {String uid, String name, String imageURL, String email}) {
  final ref = _fireStoreInst.collection('users').doc(uid);

  ref.set({'id': uid, 'name': name, 'email': email, 'imageURL': imageURL});
}