import 'package:get/get.dart';
import 'package:quick_actions/quick_actions.dart';

class DashboardController extends GetxController {
  var tabIndex = 2;


  @override
  void onInit() {
    super.onInit();
    final QuickActions quickActions = QuickActions();
    quickActions.initialize((shortcutType) {
      if (shortcutType == 'action_main') {
        print('The user tapped on the "Main view" action.');
      }
      // More handling code...
    });
    quickActions.setShortcutItems(<ShortcutItem>[
      const ShortcutItem(type: 'action_main', localizedTitle: 'Main view', icon: 'icon_main'),
      const ShortcutItem(type: 'action_help', localizedTitle: 'Help', icon: 'icon_help')
    ]);
  }

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
