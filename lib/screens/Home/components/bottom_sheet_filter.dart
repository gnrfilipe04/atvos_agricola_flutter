import 'package:atvos_agricola/components/CustomButton/custom_button.dart';
import 'package:atvos_agricola/models/filter.dart';
import 'package:atvos_agricola/screens/Home/controllers/home_controller.dart';
import 'package:atvos_agricola/screens/Home/models/filter_model.dart';
import 'package:atvos_agricola/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BottomSheetFilter extends StatefulWidget {
  const BottomSheetFilter(
      {Key? key, required this.model, required this.controller})
      : super(key: key);

  final FilterModel model;
  final HomeController controller;

  @override
  State<BottomSheetFilter> createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  _setFiltersInStorage({required Filter filters}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isSupply', filters.isSupply);
    await prefs.setBool('isFertigation', filters.isFertigation);
    await prefs.setBool('isPlanting', filters.isPlanting);
    await prefs.setBool('isProduction', filters.isProduction);
  }

  _onFilter() async {
    var filters = Filter(
        isSupply: widget.model.showSupply,
        isFertigation: widget.model.showFertigation,
        isPlanting: widget.model.showPlanting,
        isProduction: widget.model.showProduction);

    var isFiltersActive =
        await widget.controller.filtersActive(filters: filters);

    var originalNotes = widget.model.notes;
    var notesFiltered = widget.controller.filterNotes(filters: filters);

    await _setFiltersInStorage(filters: filters);

    isFiltersActive
        ? widget.controller.setNotesFiltered(notes: notesFiltered)
        : widget.controller.setNotesFiltered(notes: originalNotes);

    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) => _contentFilter());
  }

  _contentFilter() {
    var filters = Filter(
        isSupply: widget.model.showSupply,
        isFertigation: widget.model.showFertigation,
        isPlanting: widget.model.showPlanting,
        isProduction: widget.model.showProduction);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _line(),
          _title(title: 'Filtros'),
          _sectionTitle(title: 'Tipos'),
          _switchItem(
              title: 'Insumo',
              isActive: filters.isSupply,
              onChanged: () =>
                  widget.controller.setSupply(filter: filters.isSupply)),
          _switchItem(
              title: 'Fertirrigação',
              isActive: filters.isFertigation,
              onChanged: () => widget.controller
                  .setFertigation(filter: filters.isFertigation)),
          _switchItem(
              title: 'Plantio',
              isActive: filters.isPlanting,
              onChanged: () =>
                  widget.controller.setPlanting(filter: filters.isPlanting)),
          _switchItem(
              title: 'Produção',
              isActive: filters.isProduction,
              onChanged: () => widget.controller
                  .setProduction(filter: filters.isProduction)),
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
