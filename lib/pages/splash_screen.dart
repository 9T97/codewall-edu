import 'dart:async';

import 'package:codewall_tachnology/util/navegate.dart';
import 'package:flutter/material.dart';

import '../util/animation_particular.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () => Navegate.goToWelcome(context));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF0EEBFD), Color(0xFF10E4F8)])),
            ),
          ),
          const Positioned.fill(
            child: Opacity(
              opacity: 0.8,
              child: AnimacionParticulas(50),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/codewall.png"),
              ),
              Text(
                "codewall edu",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircularProgressIndicator(color: Color(0xFFFFF200),),
              SizedBox(
                height: 10,
              ),
              Text(
                "Created By",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "CodeWall Technology",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 40)),
            ],
          ),
        ],
      ),
    );
  }
}
