import 'package:mobx/mobx.dart';
part 'checkbox_list_store.g.dart';

class CheckboxItem = _CheckboxItemBase with _$CheckboxItem;

abstract class _CheckboxItemBase with Store {
  _CheckboxItemBase({required this.title, required this.active});
  @observable
  String title = '';

  @observable
  bool active = false;

  @action
  setActive(bool value) => active = value;
}

class CheckboxListStore = _CheckboxListStoreBase with _$CheckboxListStore;

abstract class _CheckboxListStoreBase with Store {
  @observable
  List<CheckboxItem> list = [];

  setList({required List<CheckboxItem> newList}) {
    list = newList;
  }
}
