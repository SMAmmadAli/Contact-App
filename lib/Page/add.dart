import 'package:contact_app/Page/listview.dart';
import 'package:contact_app/utils/color_file.dart';
import 'package:contact_app/utils/text_file.dart';
import 'package:flutter/material.dart';

import '../Model/listClass.dart';
import '../utils/image_file.dart';

class MyAdd extends StatefulWidget {
  const MyAdd({super.key});

  @override
  State<MyAdd> createState() => _MyAddState();
}

class _MyAddState extends State<MyAdd> {
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController Phone = TextEditingController();

  addNewContact(context) {
    setState(() {
      Contact.add({
        "Name": name.text,
        "Surname": surname.text,
        "Phone": Phone.text,
      });
      print(Contact);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      appBar: AppBar(
        backgroundColor: MyColor.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: MyColor.black,
        ),
        title: Text(
          "Add",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: MyColor.lightBlack),
        ),
        actions: [
          IconButton(
              onPressed: () {
                addNewContact(context);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyListView()));
              },
              icon: Icon(
                Icons.check,
                color: MyColor.lightBlack,
                size: 25,
              ))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  controller: name,
                  decoration: InputDecoration(
                      fillColor: MyColor.lightWhite,
                      hintText: MyTexts.hinttext1,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: MyColor.lightgrey))),
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
                  controller: surname,
                  decoration: InputDecoration(
                      fillColor: MyColor.lightWhite,
                      hintText: MyTexts.hinttext2,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: MyColor.lightgrey))),
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
                          borderSide:
                              BorderSide(width: 1, color: MyColor.lightgrey))),
                ),
              ),
            ],
          )),
    );
  }
}
