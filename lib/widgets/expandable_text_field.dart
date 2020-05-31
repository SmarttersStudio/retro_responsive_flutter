///
/// Created By Guru (guru@smarttersstudio.com) on 25/05/20 12:07 AM
///
import 'package:flutter/material.dart';

class ExpandableTextField extends StatefulWidget {
  final double minWidth ;

  ExpandableTextField({this.minWidth = 200});

  @override
  _ExpandableTextFieldState createState() => _ExpandableTextFieldState();
}

class _ExpandableTextFieldState extends State<ExpandableTextField> {
  FocusNode _focusNode ;
  @override
  void initState() {
    _focusNode = FocusNode()..addListener(() {
      setState(() {});
    });
    super.initState();
  }
  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: widget.minWidth+(_focusNode.hasFocus?30:0),
      margin: EdgeInsets.symmetric(vertical: 8 , horizontal: 12),
      padding :EdgeInsets.symmetric(vertical: 8 ) ,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      alignment: Alignment.center,
      duration: kThemeAnimationDuration,
      child: TextFormField(
        focusNode: _focusNode,
        decoration: InputDecoration(
          hintText: 'Search',
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search),
          prefixIconConstraints: BoxConstraints.tightFor(height: 32,width: 32),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
