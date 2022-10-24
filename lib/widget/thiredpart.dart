import 'package:chatapp_ui/Color/color.dart';
import 'package:chatapp_ui/Modelclass/modelclass.dart';
import 'package:chatapp_ui/Modelclass/modelclassthree.dart';
import 'package:flutter/material.dart';

import '../Modelclass/modelclass2.dart';

class Thirdpart extends StatelessWidget {
  var object = UserData.messagelist();
  var object2 = Modeldatatwo.Getdata();

  String photo;

  Thirdpart(this.photo);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Stack(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: object.length,
                  itemBuilder: ((context, index) {
                    var id = object[index].id;
                    var date = object2[index].date;
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: id == 1
                              ? CircleAvatar(
                                  backgroundColor: colorname.sixhcolor,
                                  radius: 30,
                                  child: Center(
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.transparent,
                                      ),
                                      child: Center(
                                        child: Image.network(
                                          "${photo}",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 50,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: colorname.thirdcolor),
                                    child: Center(
                                        child: Text(
                                      "Me",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    )),
                                  ),
                                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0, top: 8, bottom: 8, left: 5),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.width * 0.450,
                            decoration: BoxDecoration(
                                color: id == 1
                                    ? colorname.secondcolor
                                    : Colors.indigo[200],
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                                child: Text(
                              object[index].mesg,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            )),
                          ),
                        ),
                        Container(
                          child: Center(
                              child: Text(
                            date,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                        )
                      ],
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
