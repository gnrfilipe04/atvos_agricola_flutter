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

  @action
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'active': active,
    };
  }

  @action
  FilterItem fromMap(Map<String, dynamic> map) => FilterItem(
        title: map["title"] ?? '',
        active: map["active"] ?? false,
      );
}
