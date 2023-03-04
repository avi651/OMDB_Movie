import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:movie_omdb/screens/omdb_home_screen.dart';
import '../constants/omdb_color_constants.dart';
import '../helper/color_helper.dart';

class OMDBSplashScreen extends StatefulWidget{
  const OMDBSplashScreen({super.key});

  @override
  State<OMDBSplashScreen> createState() => _OMDBSplashScreenState();
}

class _OMDBSplashScreenState extends State<OMDBSplashScreen> with TickerProviderStateMixin {
  late AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorFromHex(blackColor),
      body: Center(
        child: Lottie.asset(
          "assets/logo.json",
          controller: _animationController,
          onLoaded: (composition) {
            _animationController!..duration
               = composition.duration
              ..forward().then((value) =>  Get.to(() => const OMDBHomeScreen(),
                transition: Transition.fadeIn,
                  duration: const Duration(seconds: 1),
               ),
              );
          }
        ),
      ),
    );
  }
}