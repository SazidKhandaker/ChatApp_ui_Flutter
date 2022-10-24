import 'package:chatapp_ui/widget/firstplace.dart';
import 'package:chatapp_ui/widget/secondpart.dart';
import 'package:flutter/material.dart';
import 'Color/color.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  var Colorname = colorname();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorname.firstsidecolor,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, bottom: 10, top: 10, right: 10),
              child: Text(
                "Chat with\nYour Friends",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 15),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white.withOpacity(0.4),
                        child: Center(
                            child: Icon(
                          Icons.search,
                          size: 35,
                          color: Colors.white,
                        )),
                      ),
                    ),
                    FirstsideDemo(),
                  ],
                ),
              ),
            ),
            Expanded(child: SecondpartDemo()),
          ],
        ),
      ),
    );
  }
}
