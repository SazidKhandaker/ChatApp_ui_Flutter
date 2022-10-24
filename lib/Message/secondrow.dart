import 'package:chatapp_ui/Color/color.dart';
import 'package:flutter/material.dart';

class Secondrow extends StatelessWidget {
  String name;

  Secondrow(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: colorname.thirdcolor,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.phone,
                        size: 30,
                        color: Colors.green,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: colorname.sixhcolor,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.video_call,
                        size: 30,
                        color: Colors.red,
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
