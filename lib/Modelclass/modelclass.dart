import 'package:chatapp_ui/Color/color.dart';
import 'package:flutter/material.dart';

class Modelclass {
  var colorfrom = colorname();

  int id;
  String image;
  Color clr;
  Modelclass(this.id, this.image, this.clr);

  static List<Modelclass> firststorylist() {
    return [
      Modelclass(0, "https://cdn-icons-png.flaticon.com/512/3006/3006876.png",
          colorname.fourthcolor),
      Modelclass(1, "https://cdn-icons-png.flaticon.com/512/3006/3006872.png",
          colorname.secondcolor),
      Modelclass(2, "https://cdn-icons-png.flaticon.com/512/3006/3006935.png",
          colorname.thirdcolor),
      Modelclass(3, "https://cdn-icons-png.flaticon.com/512/1331/1331806.png",
          colorname.fourthcolor),
      Modelclass(4, "https://cdn-icons-png.flaticon.com/512/3006/3006904.png",
          colorname.fourthcolor),
      Modelclass(5, "https://cdn-icons-png.flaticon.com/512/3006/3006938.png",
          colorname.thirdcolor),
      Modelclass(6, "https://cdn-icons-png.flaticon.com/512/3006/3006924.png",
          colorname.secondcolor),
      Modelclass(7, "https://cdn-icons-png.flaticon.com/512/3006/3006872.png",
          colorname.secondcolor),
      Modelclass(8, "https://cdn-icons-png.flaticon.com/512/3006/3006935.png",
          colorname.thirdcolor),
    ];
  }
}
