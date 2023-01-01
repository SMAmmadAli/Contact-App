import 'package:contact_app/utils/color_file.dart';
import 'package:flutter/material.dart';

class MyAdd extends StatelessWidget {
  const MyAdd({super.key});

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
              onPressed: () {},
              icon: Icon(
                Icons.check,
                color: MyColor.lightBlack,
                size: 25,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          color: Colors.grey,
          child: TextField(
            decoration: InputDecoration(
                label: const Text('Name'),
                hintText: 'Enter name',
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1, color: MyColor.lightBlack))),
          ),
        ),
      ),
    );
  }
}
