import 'package:atvos_agricola/app/screens/Home/controllers/home_controller.dart';
import 'package:atvos_agricola/app/screens/Home/viewmodel/filters_vm.dart';
import 'package:atvos_agricola/app/viewmodel/notes_vm.dart';
import 'package:atvos_agricola/app/viewmodel/orders_vm.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @action
  init() {
    provider();
  }

  @action
  provider() {
    GetIt.I.registerSingleton<OrdersVm>(OrdersVm());
    GetIt.I.registerSingleton<NotesVm>(NotesVm());
    GetIt.I.registerSingleton<HomeController>(HomeController());
    GetIt.I.registerSingleton<FiltersVm>(FiltersVm());
  }
}
