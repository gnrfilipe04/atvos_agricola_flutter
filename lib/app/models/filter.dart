import 'package:mobx/mobx.dart';
part 'filter.g.dart';

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

class Filter = _FilterBase with _$Filter;

abstract class _FilterBase with Store {
  @observable
  List<FilterItem> list = [
    FilterItem(title: 'Insumo', active: false),
    FilterItem(title: 'Fertirrigação', active: false),
    FilterItem(title: 'Plantio', active: false),
    FilterItem(title: 'Produção', active: false),
  ];
}
