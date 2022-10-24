import 'package:chatapp_ui/Color/color.dart';
import 'package:chatapp_ui/Message/secondrow.dart';
import 'package:chatapp_ui/Modelclass/modelclass.dart';
import 'package:chatapp_ui/Modelclass/modelclass2.dart';
import 'package:chatapp_ui/widget/thiredpart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Message/firstrow.dart';

class Singleditelspage extends StatelessWidget {
  String nameofuser;
  String photo;
  Singleditelspage(this.nameofuser, this.photo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorname.firstsidecolor,
      body: Column(
        children: [
          FirstRow(),
          Secondrow(nameofuser),
          Expanded(child: Thirdpart(photo)),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: "Send Message",
                    hintStyle: TextStyle(color: Colors.red),
                    suffixIcon: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blueGrey,
                      child: Center(
                          child: Icon(
                        Icons.send,
                        color: Colors.green,
                      )),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
