import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference _usersCollection = FirebaseFirestore.instance.collection('users');

  // ユーザー一覧を取得するメソッド
  Future<List<Map<String, dynamic>>> getUsers() async {
    List<Map<String, dynamic>> userList = [];

    try {
      await _usersCollection.get().then((QuerySnapshot querySnapshot) {
        for (var doc in querySnapshot.docs) {
          Map<String, dynamic> user = doc.data() as Map<String, dynamic>;
          user['id'] = doc.id; // 必要に応じてドキュメントIDも追加
          userList.add(user);
        }
      });
      return userList;
    } catch (e) {
      print("Failed to get users: $e");
      return []; // エラー発生時は空のリストを返す
    }
  }
}
