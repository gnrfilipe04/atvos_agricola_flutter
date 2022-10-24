import 'package:atvos_agricola/app/screens/Notation/models/stepper_model.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'notation_controller.g.dart';

class NotationController = _NotationControllerBase with _$NotationController;

abstract class _NotationControllerBase with Store {
  _NotationControllerBase({String? typeNoteSelected}) {
    typeNote = typeNoteSelected ?? '';
  }

  final StepperModel stepper = GetIt.I.get<StepperModel>();

  @observable
  String typeNote = '';
  @action
  init() {}
}
