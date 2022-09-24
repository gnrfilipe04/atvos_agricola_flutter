import 'package:atvos_agricola/app/screens/Notation/model/stepper_model.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'notation_controller.g.dart';

class NotationController = _NotationControllerBase with _$NotationController;

abstract class _NotationControllerBase with Store {
  final StepperModel stepper = GetIt.I.get<StepperModel>();

  @action
  init() {
    setSteps(newSteps: [
      Step(
        title: const Text(
          'Tipo',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        isActive: stepper.index >= 0,
        content: Container(
            alignment: Alignment.centerLeft,
            child: const Text('Content for Step 1')),
      ),
      Step(
        title: const Text('Cabeçalho',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        isActive: stepper.index >= 0,
        content: const Text('Content for Step 2'),
      ),
      Step(
        title: const Text('Locais',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        isActive: stepper.index >= 0,
        content: const Text('Content for Step 3'),
      ),
    ]);
  }

  @action
  setSteps({required List<Step> newSteps}) {
    stepper.steps = newSteps;
  }
}
