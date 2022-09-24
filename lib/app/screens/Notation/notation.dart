import 'package:atvos_agricola/app/components/AppBar/app_bar_custom.dart';
import 'package:atvos_agricola/app/components/CustomButton/custom_button.dart';
import 'package:atvos_agricola/app/components/TitleScreen/title_screen.dart';
import 'package:atvos_agricola/app/screens/Notation/controller/notation_controller.dart';
import 'package:atvos_agricola/app/screens/Notation/viewmodel/stepper_vm.dart';
import 'package:atvos_agricola/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class Notation extends StatefulWidget {
  const Notation({Key? key}) : super(key: key);

  @override
  State<Notation> createState() => _NotationState();
}

class _NotationState extends State<Notation> {
  final NotationController notationController =
      GetIt.I.get<NotationController>();

  final StepperVm stepperVm = GetIt.I.get<StepperVm>();

  @override
  void initState() {
    super.initState();
    notationController.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: AppBarCustom(
              leading: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 24,
                ),
              ),
            )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleScreen(text: 'Novo apontamento'),
            Observer(
                builder: (_) => Stepper(
                    controlsBuilder: (context, _) {
                      return Row(
                        children: <Widget>[
                          CustomButton(
                              onPress: () => stepperVm.onStepCancel(),
                              horizontalPadding: 30,
                              title: 'Voltar',
                              bgColor: CustomColors.greyBlue),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: CustomButton(
                                onPress: () => stepperVm.onStepContinue(),
                                title: 'Avançar',
                                horizontalPadding: 30,
                                bgColor: CustomColors.orange),
                          ),
                        ],
                      );
                    },
                    currentStep: stepperVm.index,
                    onStepTapped: (i) => stepperVm.onStepTapped(indexTapped: i),
                    steps: stepperVm.steps))
          ],
        ));
  }
}
