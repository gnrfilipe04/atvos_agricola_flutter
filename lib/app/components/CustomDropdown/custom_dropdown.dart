import 'package:atvos_agricola/app/components/CustomDropdown/custom_dropdown_store.dart';
import 'package:atvos_agricola/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class CustomDropdown extends StatefulWidget {
  CustomDropdown(
      {Key? key, required this.dropdownList, required this.customDropdownStore})
      : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();

  final List<String> dropdownList;
  final CustomDropdownStore customDropdownStore;
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  void initState() {
    super.initState();

    widget.customDropdownStore.dropdownList = widget.dropdownList;
    widget.customDropdownStore.dropdownValue = widget.dropdownList.first;
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => DropdownButton<String>(
              value: widget.customDropdownStore.dropdownValue,
              iconDisabledColor: CustomColors.grey,
              iconEnabledColor: CustomColors.orange,
              isExpanded: true,
              enableFeedback: false,
              icon: const Icon(
                Icons.arrow_drop_down,
              ),
              elevation: 16,
              style: const TextStyle(color: CustomColors.orange),
              dropdownColor: CustomColors.blueDarkLight,
              underline: Container(
                height: 2,
                color: Colors.transparent,
              ),
              onChanged: (String? value) {
                widget.customDropdownStore.setDropdownValue(value: value);
              },
              items: widget.customDropdownStore.dropdownList
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                        fontSize: 18,
                        color: value != widget.customDropdownStore.dropdownValue
                            ? CustomColors.grey
                            : CustomColors.orange),
                  ),
                );
              }).toList(),
            ));
  }
}
