import 'package:atvos_agricola/app/components/CheckboxList/checkbox_list_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CheckboxList extends StatefulWidget {
  const CheckboxList({Key? key, required this.checkboxItens}) : super(key: key);

  @override
  State<CheckboxList> createState() => _CheckboxListState();

  final List<CheckboxItem> checkboxItens;
}

class _CheckboxListState extends State<CheckboxList> {
  final CheckboxListStore checkboxListStore = CheckboxListStore();

  @override
  void initState() {
    super.initState();
    checkboxListStore.setList(newList: widget.checkboxItens);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.checkboxItens.length,
        itemBuilder: (context, index) => Observer(
            builder: (_) => CheckboxListTile(
                  title: Text(checkboxListStore.list[index].title),
                  value: checkboxListStore.list[index].active,
                  onChanged: (value) => {
                    checkboxListStore.list.forEach((element) {
                      if (element != checkboxListStore.list[index]) {
                        element.setActive(false);
                      }
                    }),
                    checkboxListStore.list[index].setActive(value!)
                  },
                )));
  }
}
