import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'stepper_vm.g.dart';

class StepperVm = _StepperVmBase with _$StepperVm;

abstract class _StepperVmBase with Store {
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
