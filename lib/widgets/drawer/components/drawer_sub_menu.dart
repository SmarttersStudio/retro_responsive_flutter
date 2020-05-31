///
/// Created By Guru (guru@smarttersstudio.com) on 30/05/20 3:16 AM
///
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class DrawerSubMenu extends StatefulWidget {
  final menu;

  DrawerSubMenu(this.menu);

  @override
  _DrawerSubMenuState createState() => _DrawerSubMenuState();
}

class _DrawerSubMenuState extends State<DrawerSubMenu> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      title: Text(widget.menu.name,style:TextStyle(
      color: Colors.blueGrey
    ) ,));
  }
}
