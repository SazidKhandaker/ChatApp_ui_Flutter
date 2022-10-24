import 'package:chatapp_ui/Modelclass/modelclass.dart';
import 'package:chatapp_ui/Modelclass/modelclass2.dart';
import 'package:chatapp_ui/singlepage.dart';
import 'package:flutter/material.dart';

class SecondpartDemo extends StatelessWidget {
  var secondmodelclass = Modeldatatwo.Getdata();
  var firstclassimage = Modelclass.firststorylist();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white),
        child: ListView.builder(
            itemCount: secondmodelclass.length,
            itemBuilder: ((context, index) {
              var listofsecondpart = secondmodelclass[index];
              var pic = firstclassimage[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Singleditelspage(
                              "${listofsecondpart.firstname} ${listofsecondpart.lastname}",
                              "${pic.image}")));
                },
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 35,
                      backgroundColor: pic.clr,
                      backgroundImage: NetworkImage("${pic.image}"),
                    ),
                    title: Text(
                      "${listofsecondpart.firstname} ${listofsecondpart.lastname}",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(listofsecondpart.lastmsg,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    trailing: Text(listofsecondpart.date,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
