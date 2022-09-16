import 'package:mobx/mobx.dart';
part 'filter_item.g.dart';

class FilterItem = _FilterItemBase with _$FilterItem;

abstract class _FilterItemBase with Store {
  _FilterItemBase({required this.title, required this.active});
  @observable
  String title = '';

  @observable
  bool active = false;

  @action
  setActive(bool value) => active = value;
}
