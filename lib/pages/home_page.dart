///
/// Created By Guru (guru@smarttersstudio.com) on 24/05/20 11:41 PM
///
import 'package:flutter/material.dart';
import 'package:retroresponsive/widgets/drawer/common_drawer.dart';
import 'package:retroresponsive/widgets/expandable_text_field.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          ExpandableTextField(),
          Tooltip(
            message: 'Select Language',
            child: DropdownButton(items: [
              'English',
              'Hindi',
              'Odia'
            ].map((e) => DropdownMenuItem(child: Text(e))).toList(), onChanged: (val){}),
          ),
          Tooltip(
            message: 'Notification',
            child: IconButton(
              icon: Icon(Icons.notifications),
              onPressed: (){
              
              },
            ),
          ),
          Tooltip(
            message: 'Color',
            child: IconButton(
              icon: Icon(Icons.invert_colors),
              onPressed: (){
        
              },
            ),
          ),
          Tooltip(
            message: 'Git Hub',
            child: IconButton(
              icon: Icon(Icons.card_giftcard),
              onPressed: (){
        
              },
            ),
          ),
          Tooltip(
            message: 'Dark Mode',
            child: IconButton(
              icon: Icon(Icons.brightness_4),
              onPressed: (){
        
              },
            ),
          ),
          Tooltip(
            message: 'Language',
            child: IconButton(
              icon: Icon(Icons.language),
              onPressed: (){
        
              },
            ),
          ),
        ],
      ),
      drawer: CommonDrawer(),
      body: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Flex(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            direction:width>=960?Axis.horizontal:Axis.vertical,
            crossAxisAlignment: width>=960?CrossAxisAlignment.start:CrossAxisAlignment.center,
              children: [
                Icon(Icons.map,size: 200,),
                 Container(
                  width: width/2,
                  child: Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: width>=960?CrossAxisAlignment.start:CrossAxisAlignment.center,
                    children: [
                    Text('MATERIAL-UI',style: TextStyle(
                      fontSize: 50,
                      letterSpacing: 1
                    ),),
                    Text(
                      'React components for faster and easier web development. Build your own design system, or start with Material Design.',
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                      fontSize: 35,
                      letterSpacing: 0.5
                    ),)
                  ],),
                )
            ],
          ),
        ),
      ),
    );
  }
}
