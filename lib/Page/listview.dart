import 'package:contact_app/Model/listClass.dart';
import 'package:contact_app/utils/image_file.dart';
import 'package:flutter/material.dart';

import '../utils/color_file.dart';
import 'add.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  editContact(context, index) {
    setState(() {
      Contact[index] = {
        "name": Contact[index]['Name'].text,
        "userName": Contact[index]['Surname'].text,
        "number": Contact[index]['Phone'].text,
      };
    });
  }

  deleteContact(context, index) {
    setState(() {
      Contact[index] = {
        "name": Contact[index]['Name'].text == '',
        "userName": Contact[index]['Surname'].text == '',
        "number": Contact[index]['Phone'].text == '',
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        elevation: 0,
        title: Text(
          "Contacts",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: MyColor.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: MyColor.lightBlack,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: MyColor.lightBlack,
                size: 25,
              ))
        ],
      ),
      body: ListView.builder(
          itemCount: Contact.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: MyColor.lightgrey,
                radius: 30,
                child: Text("${Contact[index]['Name'][0]}"),
              ),
              title: Text(
                  '${Contact[index]['Name']} ${Contact[index]['Surname']}'),
              subtitle: Text('${Contact[index]['Phone']}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        editContact(context, index);
                      },
                      icon: const Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        deleteContact(context, index);
                      },
                      icon: const Icon(Icons.delete))
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (Context) => const MyAdd()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
