import 'package:atvos_agricola/app/models/filter.dart';
import 'package:atvos_agricola/app/models/note.dart';
import 'package:atvos_agricola/app/models/order.dart';
import 'package:atvos_agricola/app/screens/Home/controllers/home_controller.dart';
import 'package:atvos_agricola/app/screens/Notation/controller/notation_controller.dart';
import 'package:atvos_agricola/app/screens/Notation/model/stepper_model.dart';
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
    GetIt.I.registerSingleton<Filter>(Filter());
    GetIt.I.registerSingleton<Order>(Order());
    GetIt.I.registerSingleton<Note>(Note());
    GetIt.I.registerSingleton<StepperModel>(StepperModel());
    GetIt.I.registerSingleton<HomeController>(HomeController());
    GetIt.I.registerSingleton<NotationController>(NotationController());
  }
}
