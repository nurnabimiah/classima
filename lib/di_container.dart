import 'package:classimia/utils/app_constants.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  //    Get.lazyPut(() => BottomNavigationBarController(), fenix: true);
  //    Get.lazyPut(() => HomeController(), fenix: true);


  /// External
      final sharedPreferences = await SharedPreferences.getInstance();
      sl.registerLazySingleton(() => sharedPreferences);
      sl.registerLazySingleton(() => Dio());
      sl.registerLazySingleton(() => LoggingInterceptor());

}