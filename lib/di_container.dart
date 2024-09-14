import 'package:classimia/controller/auth_controller/reset_password_controller.dart';
import 'package:classimia/controller/auth_controller/sign_in_controller.dart';
import 'package:classimia/controller/auth_controller/sign_up_controller.dart';
import 'package:classimia/controller/splash_controller/splash_controller.dart';
import 'package:classimia/utils/app_constants.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/landing_screen_controller/landing_screen_controller.dart';
import 'data/datasource/remote/dio/dio_client.dart';
import 'data/datasource/remote/dio/logging_interceptor.dart';


final sl = GetIt.instance;

Future<void> init() async {

  /// Core
     sl.registerLazySingleton(() => DioClient(AppConstants.baseUrl, sl(), loggingInterceptor: sl(), sharedPreferences: sl()));

  /// Repository
  //    sl.registerLazySingleton(() => AuthRepo(dioClient: sl(), sharedPreferences: sl()));

  /// Controller
  //    Get.lazyPut(() => SplashController(dioClient: sl()), fenix: true);
     Get.lazyPut(() => SplashController(), fenix: true);
     Get.lazyPut(() => SignInController(), fenix: true);
     Get.lazyPut(() => SignUpController(), fenix: true);
     Get.lazyPut(() => ResetPasswordController(), fenix: true);
     Get.lazyPut(() => BottomNavigationBarController(), fenix: true);


  /// External
      final sharedPreferences = await SharedPreferences.getInstance();
      sl.registerLazySingleton(() => sharedPreferences);
      sl.registerLazySingleton(() => Dio());
      sl.registerLazySingleton(() => LoggingInterceptor());

}