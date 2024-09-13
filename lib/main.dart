import 'package:classimia/utils/app_constants.dart';
import 'package:classimia/utils/routes/app_routes.dart';
import 'package:classimia/utils/services/global_navigation_service/navigation_service_widget.dart';
import 'package:classimia/view/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'di_container.dart' as di;

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      getPages: AppRoutes.appRoutes,
      navigatorKey: GlobalNavigationService.navigatorKey,
      onGenerateRoute: RouteGenerator.generateRoutes,
    );
  }
}
