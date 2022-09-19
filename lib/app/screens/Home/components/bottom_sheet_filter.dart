import 'package:atvos_agricola/app/components/CustomButton/custom_button.dart';
import 'package:atvos_agricola/app/screens/Home/controllers/home_controller.dart';
import 'package:atvos_agricola/app/screens/Home/viewmodel/filters_vm.dart';
import 'package:atvos_agricola/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class BottomSheetFilter extends StatefulWidget {
  const BottomSheetFilter({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomSheetFilter> createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  final homeController = GetIt.I.get<HomeController>();
  final filterVm = GetIt.I.get<FiltersVm>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) => _contentFilter());
  }

  onFilter() {
    homeController.pageIndex == 0
        ? filterVm.filterNotes()
        : filterVm.filterOrders();
  }

  _contentFilter() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _line(),
          _title(title: 'Filtros'),
          _sectionTitle(title: 'Tipos'),
          _switchList(),
          _divisor(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 28),
            child: CustomButton(
                onPress: () => {onFilter(), Navigator.pop(context)},
                title: 'Aplicar',
                bgColor: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }

  _switchList() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: filterVm.switchList.length,
      itemBuilder: (_, index) {
        var item = filterVm.switchList[index];
        return Observer(
            builder: (_) => _switchItem(
                title: item.title,
                isActive: item.active,
                onChanged: () => item.setActive(!item.active)));
      },
    );
  }

  _line() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 180),
      child: Container(
        height: 5,
        decoration: BoxDecoration(
            color: CustomColors.blueDarkLight,
            borderRadius: BorderRadius.circular(40)),
      ),
    );
  }

  _title({required String title}) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(
            color: CustomColors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  _sectionTitle({required String title}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text(
        title,
        style: const TextStyle(
            color: CustomColors.grey,
            fontSize: 14,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  _divisor() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Divider(indent: 20, endIndent: 20),
    );
  }

  _switchItem(
      {required String title,
      required isActive,
      required Function() onChanged}) {
    return SwitchListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
        activeColor: CustomColors.orange,
        title: Text(
          title,
          style: TextStyle(
              fontSize: 14,
              color: isActive ? CustomColors.orange : CustomColors.grey),
        ),
        value: isActive,
        onChanged: (bool value) {
          onChanged();
        });
  }
}
