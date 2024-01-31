import 'package:dummy_project_2/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:dummy_project_2/app/app.bottomsheets.dart';
import 'package:dummy_project_2/app/app.dialogs.dart';
import 'package:dummy_project_2/app/app.locator.dart';
import 'package:dummy_project_2/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  await ThemeManager.initialise();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
        defaultThemeMode: ThemeMode.system,
        darkTheme: ThemeData(brightness: Brightness.dark),
        lightTheme: ThemeData(brightness: Brightness.light),

        builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.startupView,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorKey: StackedService.navigatorKey,
            navigatorObservers: [
              StackedService.routeObserver,
            ],
            darkTheme: darkTheme,
            theme: regularTheme,
            themeMode: themeMode));
  }
}
