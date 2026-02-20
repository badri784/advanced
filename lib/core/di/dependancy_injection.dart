import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:project/core/networking/dio_factory.dart';
import 'package:project/core/networking/wep_services.dart';
import 'package:project/feature/login/data/repos/login_repo.dart';
import 'package:project/feature/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();

  // Login
  getIt.registerLazySingleton<WepServices>(() => WepServices(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
