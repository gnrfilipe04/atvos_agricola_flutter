import 'package:atvos_agricola/app/components/CheckboxList/checkbox_list.dart';
import 'package:atvos_agricola/app/components/CheckboxList/checkbox_list_store.dart';
import 'package:atvos_agricola/app/components/CustomButton/custom_button.dart';
import 'package:atvos_agricola/app/components/CustomDropdown/custom_dropdown.dart';
import 'package:atvos_agricola/app/components/CustomDropdown/custom_dropdown_store.dart';
import 'package:atvos_agricola/app/components/TitleScreen/title_screen.dart';
import 'package:flutter/material.dart';

class TypeNote extends StatefulWidget {
  const TypeNote({Key? key}) : super(key: key);

  @override
  State<TypeNote> createState() => _TypeNoteState();
}

class _TypeNoteState extends State<TypeNote> {
  final CustomDropdownStore dropdownInstance = CustomDropdownStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _titleAndList(dropdownInstance: dropdownInstance),
            _confirmButton(context: context)
          ],
        ),
      ),
    );
  }
}

_titleAndList({required CustomDropdownStore dropdownInstance}) {
  List<CheckboxItem> list = [
    CheckboxItem(title: 'Insumo', active: false),
    CheckboxItem(title: 'Fertirrigação', active: false),
    CheckboxItem(title: 'Produção', active: false),
    CheckboxItem(title: 'Plantio', active: false),
  ];

  return Column(
    children: [
      const Padding(
        padding: EdgeInsets.only(top: 40),
        child: TitleScreen(text: 'Escolha o tipo de apontamento'),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: CheckboxList(checkboxItens: list),
      )
    ],
  );
}

_confirmButton({required BuildContext context}) {
  return CustomButton(
      onPress: () => {},
      title: 'Confirmar',
      bgColor: Theme.of(context).primaryColor);
}
