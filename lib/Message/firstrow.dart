import 'package:chatapp_ui/Modelclass/modelclass.dart';
import 'package:chatapp_ui/Modelclass/modelclass2.dart';
import 'package:flutter/material.dart';

class FirstRow extends StatelessWidget {
  const FirstRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Back",
                  style: TextStyle(color: Colors.grey[300], fontSize: 18),
                )),
            TextButton(
                onPressed: () {},
                child: Text("Search",
                    style: TextStyle(color: Colors.grey[300], fontSize: 18))),
          ],
        ),
      ),
    );
  }
}
