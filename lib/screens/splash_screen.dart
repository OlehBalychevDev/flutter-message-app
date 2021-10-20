import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_provider_starter/localization/keys.dart';
import 'package:flutter_provider_starter/themes/theme.dart';
import 'package:flutter_provider_starter/utils/image_assets.dart';
import 'package:flutter_translate/flutter_translate.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final circleDiameter = MediaQuery.of(context).size.width * 1.2;

    return Scaffold(
      backgroundColor: context.theme.colorScheme.primary,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -circleDiameter / 3,
            left: -circleDiameter / 12,
            child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: context.theme.primaryColor),
                height: circleDiameter,
                width: circleDiameter),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(ImageAssets.mainImage),
              Padding(
                padding: const EdgeInsets.only(top: 48, bottom: 24),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Image.asset(ImageAssets.chatImage),
                    ),
                    Text(
                      translate(Keys.App_Title),
                      style: context.textTheme.caption,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 100, right: 36, left: 36),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit vivamus',
                  style: context.textTheme.overline,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    super.initState();
  }
}
