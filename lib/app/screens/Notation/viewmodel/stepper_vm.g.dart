// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stepper_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StepperVm on _StepperVmBase, Store {
  late final _$indexAtom = Atom(name: '_StepperVmBase.index', context: context);

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  late final _$stepsAtom = Atom(name: '_StepperVmBase.steps', context: context);

  @override
  List<Step> get steps {
    _$stepsAtom.reportRead();
    return super.steps;
  }

  @override
  set steps(List<Step> value) {
    _$stepsAtom.reportWrite(value, super.steps, () {
      super.steps = value;
    });
  }

  late final _$_StepperVmBaseActionController =
      ActionController(name: '_StepperVmBase', context: context);

  @override
  dynamic onStepCancel() {
    final _$actionInfo = _$_StepperVmBaseActionController.startAction(
        name: '_StepperVmBase.onStepCancel');
    try {
      return super.onStepCancel();
    } finally {
      _$_StepperVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onStepContinue() {
    final _$actionInfo = _$_StepperVmBaseActionController.startAction(
        name: '_StepperVmBase.onStepContinue');
    try {
      return super.onStepContinue();
    } finally {
      _$_StepperVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onStepTapped({required int indexTapped}) {
    final _$actionInfo = _$_StepperVmBaseActionController.startAction(
        name: '_StepperVmBase.onStepTapped');
    try {
      return super.onStepTapped(indexTapped: indexTapped);
    } finally {
      _$_StepperVmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index},
steps: ${steps}
    ''';
  }
}
