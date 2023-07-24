import 'package:codewall_tachnology/misc/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          // title: MyAppBar(width: width)
        //  search
      ),

      bottomNavigationBar: Container(
        child: GNav(
          color: Colors.black,
          activeColor: AppColors.mainColor,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          tabs:const [
            GButton(
              icon: Icons.compare_sharp,
              text: 'Explore',

            ),
            GButton(
              icon: Icons.book,
              text: 'My Courses',
            )
          ],
        ),
      ),
    );
  }
}