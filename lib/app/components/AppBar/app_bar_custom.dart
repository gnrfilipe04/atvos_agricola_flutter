import 'package:atvos_agricola/app/theme/colors.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({Key? key, this.title, this.leading}) : super(key: key);

  final String? title;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: leading != null ? 0 : 16,
      toolbarHeight: 30,
      backgroundColor: Colors.transparent,
      leading: leading,
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(title ?? ''),
      ),
      elevation: 0,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 8, top: 10),
          child: Icon(Icons.wifi, color: CustomColors.green, size: 24),
        ),
        Padding(
          padding: EdgeInsets.only(right: 16, top: 10),
          child: Icon(Icons.more_vert, size: 24),
        ),
      ],
    );
  }
}
