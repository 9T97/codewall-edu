import 'package:codewall_tachnology/misc/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isRespoonsive;
  double? width;
  String? btntext;
  IconData? iconDown;
  ResponsiveButton({
    super.key,
    this.isRespoonsive,
    this.width,
    this.btntext,
    this.iconDown,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF989acd), Color(0xFF5d69b3)]
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Row(
          children: [
            Text(btntext!, style: TextStyle(color: Colors.white),),
            SizedBox(width: 10,),
            Icon(iconDown,color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
