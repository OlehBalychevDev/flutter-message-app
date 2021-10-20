import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_provider_starter/localization/keys.dart';
import 'package:flutter_provider_starter/navigation_routes.dart';
import 'package:flutter_provider_starter/providers/theme_provider.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:provider/provider.dart';

class Application extends StatefulWidget {
  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    final localizationDelegate = LocalizedApp.of(context).delegate;

    return LocalizationProvider(
      state: LocalizationProvider.of(context).state,
      child: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => ThemeProvider(),
            )
          ],
          child: Consumer<ThemeProvider>(builder: (context, themeProvider, _) {
            return MaterialApp(
              title: translate(Keys.App_Title),
              theme: Provider.of<ThemeProvider>(context).getThemeData,
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                localizationDelegate
              ],
              supportedLocales: localizationDelegate.supportedLocales,
              locale: localizationDelegate.currentLocale,
              routes: applicationRoutes,
              initialRoute: splashScreenRoute,
            );
          })),
    );
  }
}
