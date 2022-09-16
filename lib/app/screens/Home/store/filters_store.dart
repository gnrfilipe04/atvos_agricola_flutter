import 'package:atvos_agricola/app/screens/Home/models/filter_item.dart';
import 'package:mobx/mobx.dart';
part 'filters_store.g.dart';

class FiltersStore = _FiltersStoreBase with _$FiltersStore;

abstract class _FiltersStoreBase with Store {
  _FiltersStoreBase(this.switchList);

  @observable
  List<FilterItem> switchList = [];

  @action
  setList(List<FilterItem> list) => switchList = list;
}
