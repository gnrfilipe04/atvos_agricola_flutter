import 'package:atvos_agricola/app/components/CustomDropdown/custom_dropdown.dart';
import 'package:atvos_agricola/app/components/CustomDropdown/custom_dropdown_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'stepper_model.g.dart';

class FormINS = _FormINSBase with _$FormINS;

abstract class _FormINSBase with Store {
  _FormINSBase(
      {required int stepIndex,
      required CustomDropdownStore dropdowntypesNote}) {
    index = stepIndex;
    dropdownInstance = dropdowntypesNote;
  }

  @observable
  int index = 0;

  @observable
  late CustomDropdownStore dropdownInstance = CustomDropdownStore();

  @computed
  ObservableList<Step> get steps => ObservableList<Step>.of([
        Step(
          title: const Text(
            'Tipo',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          isActive: index >= 0,
          content: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
                child: CustomDropdown(
                    customDropdownStore: dropdownInstance,
                    dropdownList: const [
                      'Insumo',
                      'Fertirrigação',
                      'Plantio',
                      'Produção'
                    ]),
              )
            ],
          ),
        ),
        Step(
          title: const Text(
            'Cabeçalho',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          isActive: index >= 0,
          content: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
                child: CustomDropdown(
                    customDropdownStore: dropdownInstance,
                    dropdownList: const [
                      'Insumo',
                      'Fertirrigação',
                      'Plantio',
                      'Produção'
                    ]),
              )
            ],
          ),
        ),
      ]);
}

class FormFER = _FormFERBase with _$FormFER;

abstract class _FormFERBase with Store {}

class StepperModel = _StepperModelBase with _$StepperModel;

abstract class _StepperModelBase with Store {
  final CustomDropdownStore dropdowntypesNote = CustomDropdownStore();

  @observable
  int index = 0;

  @computed
  String? get typeNoteSelected => dropdowntypesNote.dropdownValue;

  @computed
  ObservableList<Step> get steps => stepsByTypeNote(typeNote: typeNoteSelected);

  @action
  stepsByTypeNote({required String? typeNote}) {
    ObservableList<Step> stepsWithDropdownINS = ObservableList<Step>.of([
      Step(
        title: const Text(
          'Tipo',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        isActive: index >= 0,
        content: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
              child: CustomDropdown(
                  customDropdownStore: dropdowntypesNote,
                  dropdownList: const [
                    'Insumo',
                    'Fertirrigação',
                    'Plantio',
                    'Produção'
                  ]),
            )
          ],
        ),
      ),
      Step(
        title: const Text(
          'Insumo',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        isActive: index >= 0,
        content: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
                child: Text('hello'))
          ],
        ),
      )
    ]);

    ObservableList<Step> stepsWithDropdown = ObservableList<Step>.of([
      Step(
        title: const Text(
          'Tipo',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        isActive: index >= 0,
        content: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
              child: CustomDropdown(
                  customDropdownStore: dropdowntypesNote,
                  dropdownList: const [
                    'Insumo',
                    'Fertirrigação',
                    'Plantio',
                    'Produção'
                  ]),
            )
          ],
        ),
      ),
      Step(
        title: const Text(
          'Tipo',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        isActive: index >= 0,
        content: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
              child: Text('hello'),
            )
          ],
        ),
      ),
    ]);

    switch (typeNote) {
      case "Insumo":
        return stepsWithDropdownINS;
        break;

      case 'Fertirrigação':
        break;

      case 'PRD':
        break;

      case 'PLN':
        break;

      default:
        return stepsWithDropdown;
    }
  }

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
