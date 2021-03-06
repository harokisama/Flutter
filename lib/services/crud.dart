import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class crudMedthods{
  bool isLoggedIn() {
    if(FirebaseAuth.instance.currentUser() != null){
      return true;
    }
    else{
      return false;
    }
  }
  
  Future<void> addData(itemData) async{
    if(isLoggedIn()){
      Firestore.instance.collection('itemsListed').add(itemData).catchError((e){
        print(e);
      });
    }
    else{
      print('You need to be logged in');
    }
  }

  getData() async {
    return await Firestore.instance.collection('itemsListed').getDocuments();
  }
}