// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stepper_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FormINS on _FormINSBase, Store {
  Computed<ObservableList<Step>>? _$stepsComputed;

  @override
  ObservableList<Step> get steps =>
      (_$stepsComputed ??= Computed<ObservableList<Step>>(() => super.steps,
              name: '_FormINSBase.steps'))
          .value;

  late final _$indexAtom = Atom(name: '_FormINSBase.index', context: context);

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

  late final _$dropdownInstanceAtom =
      Atom(name: '_FormINSBase.dropdownInstance', context: context);

  @override
  CustomDropdownStore get dropdownInstance {
    _$dropdownInstanceAtom.reportRead();
    return super.dropdownInstance;
  }

  @override
  set dropdownInstance(CustomDropdownStore value) {
    _$dropdownInstanceAtom.reportWrite(value, super.dropdownInstance, () {
      super.dropdownInstance = value;
    });
  }

  @override
  String toString() {
    return '''
index: ${index},
dropdownInstance: ${dropdownInstance},
steps: ${steps}
    ''';
  }
}

mixin _$FormFER on _FormFERBase, Store {
  @override
  String toString() {
    return '''

    ''';
  }
}

mixin _$StepperModel on _StepperModelBase, Store {
  Computed<String?>? _$typeNoteSelectedComputed;

  @override
  String? get typeNoteSelected => (_$typeNoteSelectedComputed ??=
          Computed<String?>(() => super.typeNoteSelected,
              name: '_StepperModelBase.typeNoteSelected'))
      .value;
  Computed<ObservableList<Step>>? _$stepsComputed;

  @override
  ObservableList<Step> get steps =>
      (_$stepsComputed ??= Computed<ObservableList<Step>>(() => super.steps,
              name: '_StepperModelBase.steps'))
          .value;

  late final _$indexAtom =
      Atom(name: '_StepperModelBase.index', context: context);

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

  late final _$_StepperModelBaseActionController =
      ActionController(name: '_StepperModelBase', context: context);

  @override
  dynamic stepsByTypeNote({required String? typeNote}) {
    final _$actionInfo = _$_StepperModelBaseActionController.startAction(
        name: '_StepperModelBase.stepsByTypeNote');
    try {
      return super.stepsByTypeNote(typeNote: typeNote);
    } finally {
      _$_StepperModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onStepCancel() {
    final _$actionInfo = _$_StepperModelBaseActionController.startAction(
        name: '_StepperModelBase.onStepCancel');
    try {
      return super.onStepCancel();
    } finally {
      _$_StepperModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onStepContinue() {
    final _$actionInfo = _$_StepperModelBaseActionController.startAction(
        name: '_StepperModelBase.onStepContinue');
    try {
      return super.onStepContinue();
    } finally {
      _$_StepperModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onStepTapped({required int indexTapped}) {
    final _$actionInfo = _$_StepperModelBaseActionController.startAction(
        name: '_StepperModelBase.onStepTapped');
    try {
      return super.onStepTapped(indexTapped: indexTapped);
    } finally {
      _$_StepperModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index},
typeNoteSelected: ${typeNoteSelected},
steps: ${steps}
    ''';
  }
}
