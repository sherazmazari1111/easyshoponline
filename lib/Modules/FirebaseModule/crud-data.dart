import 'package:flutter/material.dart';

import 'Firebaseservices.dart';
class CrudData1 extends StatelessWidget {
   CrudData1({Key? key}) : super(key: key);
  FirestoreService firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            TextButton(
                onPressed: () async {
                  await firestoreService.saveData();
                },
                child: Text("Save")),
            TextButton(
                onPressed: () async {
                  await firestoreService.updateData();
                },
                child: Text("Update")),
            TextButton(
                onPressed: () async {
                  await firestoreService.getData();
                },
                child: Text("GET")),
            TextButton(
                onPressed: () async {
                  await firestoreService.delete();
                },
                child: Text("Delete")),
          ],
        ),
      ),
    );
  }
}
