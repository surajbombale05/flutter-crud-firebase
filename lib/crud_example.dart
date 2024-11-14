import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CRUDExample extends StatefulWidget {
  @override
  _CRUDExampleState createState() => _CRUDExampleState();
}

class _CRUDExampleState extends State<CRUDExample> {
  final TextEditingController _nameController = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // CREATE
  Future<void> addUser(String name) async {
    await _firestore.collection('suraj').add({'name': name});
  }

  // READ
  Stream<QuerySnapshot> readUsers() {
    return _firestore.collection('suraj').snapshots();
  }

  // UPDATE
  Future<void> updateUser(String id, String newName) async {
    await _firestore.collection('suraj').doc(id).update({'name': newName});
  }

  // DELETE
  Future<void> deleteUser(String id) async {
    await _firestore.collection('suraj').doc(id).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Firebase CRUD")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Enter name'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_nameController.text.isNotEmpty) {
                addUser(_nameController.text);
                _nameController.clear();
              }
            },
            child: Text("Add User"),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: readUsers(),
              builder: (context, snapshot) {
                if (snapshot.hasError) return Text("Error: ${snapshot.error}");
                if (snapshot.connectionState == ConnectionState.waiting) return CircularProgressIndicator();
                final data = snapshot.data?.docs;
                return ListView.builder(
                  itemCount: data?.length ?? 0,
                  itemBuilder: (context, index) {
                    final docData = data?[index];
                    final userId = docData?.id;
                    final userName = docData?['name'];
                    return ListTile(
                      title: Text(userName),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              _nameController.text = userName;
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Edit User"),
                                  content: TextField(controller: _nameController),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        updateUser(userId ??'', _nameController.text);
                                        Navigator.of(context).pop();
                                        _nameController.clear();
                                      },
                                      child: Text("Update"),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => deleteUser(userId ?? ''),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}