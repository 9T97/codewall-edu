import 'package:codewall_tachnology/misc/colors.dart';
import 'package:codewall_tachnology/widgets/app_large_text.dart';
import 'package:codewall_tachnology/widgets/app_text.dart';
import 'package:codewall_tachnology/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List images =[
    "On-boarding-01-V1.png",
    "On-boarding-02-V1.png",
    "On-boarding-03-V1.png",
    "On-boarding-04-V1.png",
  ];

  List textTitle = [
    "Welcome to NoLimits",
    "Anytime, Anywhere",
    "Online Learning",
    "Learn to be Master",
  ];

  List appText = [
    "Find your favourite lesson",
    "Quality Course Activities",
    "Online Session with Teacher",
    "Let’s go for it",
  ];

  List smallText = [
    "Let the learning process flow to develop their cognitive development skills.",
    "High quality learning materials for every subject that will help to do self-learning.",
    "Join live sessions with teacher or mentor and get notified for their upcoming sessions",
    "Today is your opportunity to build the tomorrow you want.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/"+images[index]
                  ),
                  fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top:80, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: textTitle[index]),
                      AppText(text: appText[index]),
                      SizedBox(height: 20,),
                      Container(
                        width: 280,
                        child: AppText(
                          text: smallText[index],
                          color: AppColors.textColor2,
                          size: 12,
                        ),
                      ),
                      SizedBox(height: 20,),
                      ResponsiveButton(btntext: index == 3 ? "Get Start" : "Next",iconDown: index == 3? Icons.arrow_right:Icons.keyboard_double_arrow_down,),
                    ],
                  ),
                  Column(
                    children: List.generate(images.length, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 5, top: 5),
                        width: 8,
                        height: index == indexDots ? 25 : 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:index== indexDots ? Colors.blue : AppColors.mainColor.withOpacity(0.5),
                        ),
                      );
                    }
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
