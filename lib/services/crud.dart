import 'package:cloud_firestore/cloud_firestore.dart';


class CrudMethods{
  Future<void> addData(Mdata) async{
    FirebaseFirestore.instance.collection('data').add(Mdata);
  }

}