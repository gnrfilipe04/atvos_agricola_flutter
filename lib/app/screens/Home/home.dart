import 'package:atvos_agricola/app/components/ListCard/list_card.dart';
import 'package:atvos_agricola/app/screens/Home/components/bottom_sheet_filter.dart';
import 'package:atvos_agricola/app/screens/Home/controllers/home_controller.dart';
import 'package:atvos_agricola/app/theme/colors.dart';
import 'package:atvos_agricola/app/viewmodel/notes_vm.dart';
import 'package:atvos_agricola/app/viewmodel/orders_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeController = GetIt.I.get<HomeController>();
  final OrdersVm ordersVm = GetIt.I.get<OrdersVm>();
  final NotesVm notesVm = GetIt.I.get<NotesVm>();

  @override
  void initState() {
    super.initState();

    homeController.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 16,
          toolbarHeight: 60,
          backgroundColor: Colors.transparent,
          title: const Padding(
            padding: EdgeInsets.only(top: 28),
            child: Text('Olá, Moisés!'),
          ),
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8, top: 28),
              child: Icon(Icons.wifi, color: CustomColors.green, size: 24),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16, top: 28),
              child: Icon(Icons.more_vert, size: 24),
            ),
          ],
        ),
        body: Observer(
            builder: (_) =>
                _showPageSelected(homeController.pageIndex, context)),
        bottomNavigationBar: _tabBottomBar(context));
  }

  _showPageSelected(int index, BuildContext context) {
    final pages = [
      _notes(context),
      _orders(context),
    ];

    return pages[index];
  }

  _notes(BuildContext context) {
    return (Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _titleScreen(context, 'Apontamentos'),
        _sectionSearch(context),
        ListCard(
          listCard: notesVm.notesFiltered,
          isAddButton: true,
        ),
      ],
    ));
  }

  _orders(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _titleScreen(context, 'Ordens'),
        _sectionSearch(context),
        ListCard(
          listCard: ordersVm.ordersFiltered,
          isAddButton: false,
        )
      ],
    );
  }

  _titleScreen(BuildContext context, String text) {
    return (Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
            fontSize: 24),
      ),
    ));
  }

  _sectionSearch(BuildContext context) {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [_inputSearch(context), _iconFilter(context)],
    ));
  }

  _inputSearch(BuildContext context) {
    return (Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        width: MediaQuery.of(context).size.width - 85,
        decoration: BoxDecoration(
          color: CustomColors.blueDarkLight,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextFormField(
          onChanged: (value) {
            print(value);
          },
          cursorColor: Theme.of(context).primaryColor,
          decoration: const InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: 'Pesquisar',
              hintStyle: TextStyle(color: CustomColors.grey),
              prefixIcon:
                  Icon(Icons.search_outlined, color: CustomColors.grey)),
        ),
      ),
    ));
  }

  _iconFilter(BuildContext context) {
    return (Padding(
      padding: const EdgeInsets.only(left: 5),
      child: _customIcon(icon: Icons.filter_alt_outlined, context: context),
    ));
  }

  _customIcon({required IconData icon, required BuildContext context}) {
    return (IconButton(
      onPressed: () => _bottomSheetMenu(context),
      icon: Icon(icon, size: 30, color: CustomColors.orange),
    ));
  }

  _tabBottomBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Observer(
          builder: (_) => BottomNavigationBar(
                  backgroundColor: Colors.transparent,
                  fixedColor: Theme.of(context).primaryColor,
                  iconSize: 30,
                  elevation: 0,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  unselectedItemColor: CustomColors.grey,
                  currentIndex: homeController.pageIndex,
                  onTap: homeController.onTabBarTapped,
                  items: <BottomNavigationBarItem>[
                    _tabBottomBarItem(Icons.ballot_outlined),
                    _tabBottomBarItem(Icons.assignment_outlined),
                  ])),
    );
  }

  _tabBottomBarItem(IconData icon) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
        ),
        label: '');
  }

  _bottomSheetMenu(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: CustomColors.blueDark,
        context: context,
        builder: (context) {
          return const BottomSheetFilter();
        });
  }
}
