import 'package:dummy_project_2/app/app.bottomsheets.dart';
import 'package:dummy_project_2/app/app.dialogs.dart';
import 'package:dummy_project_2/app/app.locator.dart';
import 'package:dummy_project_2/app/app.router.dart';
import 'package:dummy_project_2/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();
  final _themeService = locator<ThemeService>();
  // bool _isSwitchOn = false;

  bool get isDarkMode => _themeService.isDarkMode;

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void toggleSwitch(isOn) {
    _themeService.toggleDarkLightTheme();
    rebuildUi();
  }

  void navigateToLoginView() {
    _navigationService.navigateToLoginView();
  }

  void navigateToProfileView() {
    _navigationService.navigateToProfileView();
  }

  void navigateToSettingsView() {
    _navigationService.navigateToSettingsView();
  }
}
