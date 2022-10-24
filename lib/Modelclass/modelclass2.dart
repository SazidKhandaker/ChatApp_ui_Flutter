import 'package:chatapp_ui/Modelclass/modelclass.dart';
import 'package:flutter/material.dart';

class Modeldatatwo {
  // static var modelclassId = Modelclass;
  String firstname;
  String lastname;
  String lastmsg;
  String date;
  Modeldatatwo(this.firstname, this.lastname, this.lastmsg, this.date);
  static List<Modeldatatwo> Getdata() {
    return [
      Modeldatatwo("Shakib", "Al-Hasah", "Good night have nice day", "12.55 "),
      Modeldatatwo("Manik", "ahmed", "Bye take care", "11.55 "),
      Modeldatatwo("Rahim", "Kabir", "How are you?", "3.55 "),
      Modeldatatwo("Pappu", "Al-Hasah", "Good night have nice day", "5.43 "),
      Modeldatatwo("Zoli", "Khan", "Good night have nice day", "2.55 "),
      Modeldatatwo("Mahi", "Al-Hasah", "Good night byebye ", "7.55 "),
      Modeldatatwo("jiputa", "Ali", "Good night have nice day", "9.33 "),
      Modeldatatwo("jiputa", "Ali", "Good night have nice day", "9.33 "),
      Modeldatatwo("jiputa", "Ali", "Good night have nice day", "9.33 "),
    ];
  }
}
