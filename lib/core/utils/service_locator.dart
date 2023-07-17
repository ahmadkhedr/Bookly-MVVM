import 'package:bookly_mvvm/core/api_service.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiSerivce>(ApiSerivce(
    getIt.get<Dio>(),
  ));
  getIt.registerSingleton<HomeRepo>(HomeRepoImpl(
    apiService: getIt.get<ApiSerivce>(),
  ));
}
