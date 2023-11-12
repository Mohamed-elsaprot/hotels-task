import 'package:get_it/get_it.dart';
import 'package:hotels_task/features/hotels_screen/data/hotels_repo_impl.dart';

final getIt= GetIt.instance;

void setupGetItService() {
  getIt.registerSingleton<HotelsRepoImpl>(HotelsRepoImpl());
}