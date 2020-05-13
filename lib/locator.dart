import 'package:get_it/get_it.dart';
import 'services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.reset();
  locator.registerLazySingleton(() => NavigationService());
}
