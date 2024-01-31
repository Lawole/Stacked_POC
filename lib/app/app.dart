import 'package:dummy_project_2/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:dummy_project_2/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:dummy_project_2/ui/views/home/home_view.dart';
import 'package:dummy_project_2/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:dummy_project_2/ui/views/login/login_view.dart';
import 'package:dummy_project_2/ui/views/profile/profile_view.dart';
import 'package:dummy_project_2/ui/views/settings/settings_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: SettingsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
