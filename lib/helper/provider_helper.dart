import 'package:mintage_app/provider/bottom_navigation_provider.dart';
import 'package:mintage_app/provider/home_provider.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../provider/authentication_provider.dart';

class ProviderHelper {
  static List<ChangeNotifierProvider> providers = [
    ChangeNotifierProvider<AuthProvider>(create: (context) => AuthProvider()),
    ChangeNotifierProvider<BottomNavigationProvider>(
        create: (context) => BottomNavigationProvider()),
    ChangeNotifierProvider<HomeProvider>(create: (context) => HomeProvider()),
  ];

  static final authProvider =
      Provider.of<AuthProvider>(navigatorKey.currentContext!, listen: false);
  static final navProvider = Provider.of<BottomNavigationProvider>(
      navigatorKey.currentContext!,
      listen: false);
  static final homeProvider =
      Provider.of<HomeProvider>(navigatorKey.currentContext!, listen: false);
}
