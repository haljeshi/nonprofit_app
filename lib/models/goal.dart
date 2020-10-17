import 'package:flutter/cupertino.dart';

class Goal {
  String imageMain;
  List<ImageProvider> images;
  String title;
  String shortDesc;
  String longDesc;
  String location;

  Goal({@required this.imageMain, @required this.title, @required this.shortDesc, this.images, this.longDesc, this.location});
}