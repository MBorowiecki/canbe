import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rescan/core/di/di.config.dart';

final injector = GetIt.I;

@InjectableInit()
void setupDependencies() => injector.init();
