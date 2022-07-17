import 'package:cloud_firestore/cloud_firestore.dart';

create(String collName, docName, name, animal, int age) async {
  await FirebaseFirestore.instance.collection(collName).doc(docName).set({
    'name': name,
    'animal': animal,
    'age': age,
  });

  print('Database Created');
}

update(String collName, docName, field, var newFieldValue) async {
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(docName)
      .update({field: newFieldValue});

  print('Updated');
}

delete(String collName, docNAme) async {
  await FirebaseFirestore.instance.collection(collName).doc(docNAme).delete();
  print('Deleted..!!');
}
