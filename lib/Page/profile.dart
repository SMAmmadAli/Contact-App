import 'package:contact_app/Model/listClass.dart';
import 'package:flutter/material.dart';

import '../utils/color_file.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: CircleAvatar(
                  backgroundColor: MyColor.lightgrey,
                  radius: 80,
                  child: const Image(image: AssetImage('')),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
