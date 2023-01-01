import 'package:contact_app/utils/color_file.dart';
import 'package:contact_app/utils/image_file.dart';
import 'package:contact_app/utils/text_file.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(MyImage.hpImage),
          const SizedBox(height: 20),
          Center(
            child: Text(
              MyTexts.hpText,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff000000)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
