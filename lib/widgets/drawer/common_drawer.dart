///
/// Created By Guru (guru@smarttersstudio.com) on 30/05/20 2:19 AM
///
import 'package:flutter/material.dart';
import 'package:retroresponsive/config/default.dart';
import 'package:retroresponsive/config/menu_config.dart';

import 'components/drawer_main_menu.dart';

class CommonDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title:Text(DefaultConfig.appName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26
            ),) ,
            subtitle:Text(DefaultConfig.version,style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
              fontWeight: FontWeight.w500
            ),) ,
          ),
          Divider(),
          ...List.generate(drawerMenus.length,
              (index) => DrawerMainMenu(drawerMenus[index])
          )
        ],
      ),
    );
  }
}



