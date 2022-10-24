import 'package:mobx/mobx.dart';
part 'custom_dropdown_store.g.dart';

class CustomDropdownStore = _CustomDropdownStoreBase with _$CustomDropdownStore;

abstract class _CustomDropdownStoreBase with Store {
  @observable
  List<String> dropdownList = [];

  @observable
  String? dropdownValue = '';

  @action
  setDropdownValue({required String? value}) {
    dropdownValue = value;
  }

  @action
  setDropdownList({required List<String> list}) {
    dropdownList = list;
  }
}
