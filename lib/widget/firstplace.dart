import 'package:chatapp_ui/Color/color.dart';
import 'package:chatapp_ui/Modelclass/modelclass.dart';
import 'package:flutter/material.dart';

class FirstsideDemo extends StatefulWidget {
  const FirstsideDemo({super.key});

  @override
  State<FirstsideDemo> createState() => _FirstsideDemoState();
}

class _FirstsideDemoState extends State<FirstsideDemo> {
  var objectformodelclass = Modelclass.firststorylist();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: objectformodelclass.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            var listname = objectformodelclass[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: listname.clr,
                radius: 50,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      // image: DecorationImage(
                      //     image: NetworkImage("${listname.image}",),

                      //     fit: BoxFit.cover,
                    ),
                    child: Center(
                      child: Image.network(
                        listname.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            );
          })),
    );
  }
}
