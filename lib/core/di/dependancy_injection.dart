import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../networking/dio_factory.dart';
import '../networking/wep_services.dart';
import '../../feature/login/data/repos/login_repo.dart';
import '../../feature/login/logic/cubit/login_cubit.dart';
import '../../feature/signup/logic/cubit/signup_cubit.dart';
import '../../feature/signup/repo/sign_up_repo.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();

  // Login

  getIt.registerLazySingleton<WebServices>(() => WebServices(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // sign up
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
