import 'package:flutter/material.dart';
import 'package:flutter_provider_starter/screens/splash_screen.dart';

const String splashScreenRoute = '/splash_screen';

Map<String, WidgetBuilder> applicationRoutes = <String, WidgetBuilder>{
  splashScreenRoute: (context) => SplashScreen(),
};
