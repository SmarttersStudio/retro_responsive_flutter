///
/// Created By Guru (guru@smarttersstudio.com) on 30/05/20 3:15 AM
///
import 'package:flutter/material.dart';
import 'package:retroresponsive/config/menu_config.dart';
import 'package:retroresponsive/widgets/drawer/components/drawer_sub_menu.dart';
class DrawerMainMenu extends StatefulWidget {
  final MainMenu mainMenu;
  
  DrawerMainMenu(this.mainMenu);
  
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMainMenu> {
  @override
  Widget build(BuildContext context) {
    if(widget.mainMenu.path == null){
      return ExpansionTile(
        title: Text(widget.mainMenu.name),
        children: List.generate(widget.mainMenu.subMenus.length,
            (index) => widget.mainMenu.subMenus[index] is MainMenu
            ? DrawerMainMenu(widget.mainMenu.subMenus[index])
            : ListTileTheme(
            child: DrawerSubMenu(widget.mainMenu.subMenus[index]),
          )
        ),
      );
      
    }
    return DrawerSubMenu(widget.mainMenu);
  }
}
