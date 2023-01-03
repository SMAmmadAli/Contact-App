import 'package:contact_app/Model/listClass.dart';
import 'package:flutter/material.dart';

import '../utils/color_file.dart';
import '../utils/text_file.dart';
import 'add.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  TextEditingController Name = TextEditingController();
  TextEditingController Surname = TextEditingController();
  TextEditingController Phone = TextEditingController();

  editContact(context, index) {
    setState(() {
      Contact[index] = {
        "name": Contact[index]['Name'] == Name.text,
        "userName": Contact[index]['Surname'] == Surname.text,
        "number": Contact[index]['Phone'] == Phone.text,
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
                        showDialog(
                            context: context,
                            builder: ((context) => AlertDialog(
                                  title: const Text('Edit Contact'),
                                  content: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        MyTexts.text1,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: MyColor.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        color: MyColor.lightWhite,
                                        child: TextField(
                                          controller: Name,
                                          decoration: InputDecoration(
                                              fillColor: MyColor.lightWhite,
                                              hintText: MyTexts.hinttext1,
                                              border: InputBorder.none,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color:
                                                          MyColor.lightgrey))),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        MyTexts.text2,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: MyColor.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        color: MyColor.lightWhite,
                                        child: TextField(
                                          controller: Surname,
                                          decoration: InputDecoration(
                                              fillColor: MyColor.lightWhite,
                                              hintText: MyTexts.hinttext2,
                                              border: InputBorder.none,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color:
                                                          MyColor.lightgrey))),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        MyTexts.text3,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: MyColor.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        color: MyColor.lightWhite,
                                        child: TextField(
                                          controller: Phone,
                                          decoration: InputDecoration(
                                              fillColor: MyColor.lightWhite,
                                              hintText: MyTexts.hinttext3,
                                              border: InputBorder.none,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color:
                                                          MyColor.lightgrey))),
                                        ),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      child: const Text("OK"),
                                      onPressed: () {
                                        editContact(context, index);
                                      },
                                    )
                                  ],
                                )));
                      },
                      icon: const Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          Contact.removeAt(index);
                        });
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
