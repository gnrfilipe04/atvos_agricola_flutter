import 'package:atvos_agricola/components/CustomButton/custom_button.dart';
import 'package:atvos_agricola/models/card_info.dart';
import 'package:atvos_agricola/models/filter.dart';
import 'package:atvos_agricola/screens/Home/controllers/home_controller.dart';
import 'package:atvos_agricola/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BottomSheetFilter extends StatefulWidget {
  const BottomSheetFilter({Key? key}) : super(key: key);

  @override
  State<BottomSheetFilter> createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  final controller = HomeController.instance;
  final model = HomeController.filterModelInstance;

  _setFiltersInStorage({required Filter filters}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isSupply', filters.isSupply);
    await prefs.setBool('isFertigation', filters.isFertigation);
    await prefs.setBool('isPlanting', filters.isPlanting);
    await prefs.setBool('isProduction', filters.isProduction);
  }

  _onFilter() async {
    var filters = Filter(
        isSupply: model.showSupply.value,
        isFertigation: model.showFertigation.value,
        isPlanting: model.showPlanting.value,
        isProduction: model.showProduction.value);

    var isFiltersActive = await controller.filtersActive(filters: filters);

    var originalNotes = model.notes.value;
    var notesFiltered = controller.filterNotes(filters: filters);

    await _setFiltersInStorage(filters: filters);

    isFiltersActive
        ? controller.setNotesFiltered(notes: notesFiltered)
        : controller.setNotesFiltered(notes: originalNotes);

    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();

    model.showSupply.addListener(() {
      if (mounted) setState(() {});
    });

    model.showFertigation.addListener(() {
      if (mounted) setState(() {});
    });

    model.showPlanting.addListener(() {
      if (mounted) setState(() {});
    });

    model.showProduction.addListener(() {
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return _contentFilter();
  }

  _contentFilter() {
    var supplyFilter = model.showSupply;
    var fertigationFilter = model.showFertigation;
    var plantingFilter = model.showPlanting;
    var productionFilter = model.showProduction;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _line(),
          _title(title: 'Filtros'),
          _sectionTitle(title: 'Tipos'),
          _switchItem(
              title: 'Insumo',
              isActive: supplyFilter.value,
              onChanged: () => controller.filterToogle(filter: supplyFilter)),
          _switchItem(
              title: 'Fertirrigação',
              isActive: fertigationFilter.value,
              onChanged: () =>
                  controller.filterToogle(filter: fertigationFilter)),
          _switchItem(
              title: 'Plantio',
              isActive: plantingFilter.value,
              onChanged: () => controller.filterToogle(filter: plantingFilter)),
          _switchItem(
              title: 'Produção',
              isActive: productionFilter.value,
              onChanged: () =>
                  controller.filterToogle(filter: productionFilter)),
          _divisor(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 28),
            child: CustomButton(
                onPress: () => _onFilter(),
                title: 'Aplicar',
                bgColor: Theme.of(context).primaryColor),
          )
        ],
      ),
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
