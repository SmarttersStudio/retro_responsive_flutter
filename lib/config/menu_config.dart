import 'package:flutter/cupertino.dart';

///
/// Created By Guru (guru@smarttersstudio.com) on 30/05/20 2:44 AM
///
class MainMenu{
  String name;
  List subMenus;
  String path;

  MainMenu({
    @required this.name,
    this.subMenus,
    this.path
  }):assert(name!=null && (subMenus!=null || path!=null));
}

class SubMenu{
  String name;
  String path;

  SubMenu({
    @required this.name,
    @required this.path
  }):assert(name!=null && path!=null);
}

List<MainMenu> drawerMenus = [
  MainMenu(
    name: 'Getting Started',
    subMenus: [
      SubMenu(name: 'Installation', path: ''),
      SubMenu(name: 'Usage' , path: ''),
      SubMenu(name: 'Example Projects' , path: ''),
      SubMenu(name: 'FAQs', path: '')
    ]
  ),
  MainMenu(
    name: 'Components',
    subMenus: [
      MainMenu(
        name: 'Layout',
        subMenus: [
          SubMenu(name: 'Box', path: ''),
          SubMenu(name: 'Container', path: '')
        ]
      ),
      MainMenu(
        name: 'Inputs',
        subMenus: [
          SubMenu(name: 'Button', path: ''),
          SubMenu(name: 'Checkbox', path: '')
        ]
      ),
      MainMenu(
        name: 'Navigation',
        subMenus: [
          SubMenu(name: 'Link', path: ''),
          SubMenu(name: 'Menu', path: '')
        ]
      )
    ]
  ),
  MainMenu(
    name: 'Blog',
    path: ''
  )
];
