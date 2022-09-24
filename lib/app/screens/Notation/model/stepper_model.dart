import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'stepper_model.g.dart';

class StepperModel = _StepperModelBase with _$StepperModel;

abstract class _StepperModelBase with Store {
  @observable
  int index = 0;

  @observable
  List<Step> steps = [];

  @action
  onStepCancel() {
    if (index > 0) {
      index -= 1;
    }
  }

  @action
  onStepContinue() {
    if (index < steps.length - 1) {
      index += 1;
    }
  }

  @action
  onStepTapped({required int indexTapped}) {
    index = indexTapped;
  }
}
