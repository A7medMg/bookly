import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/data/repo/home_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
final getIt = GetIt.instance;
void setup(){
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(apiServices: getIt.get<ApiServices>()));
}