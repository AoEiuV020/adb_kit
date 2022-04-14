import 'package:adb_tool/app/modules/drawer/desktop_phone_drawer.dart';
import 'package:adb_tool/app/routes/app_pages.dart';
import 'package:adb_tool/core/interface/adb_page.dart';
import 'package:adb_tool/generated/l10n.dart';
import 'package:adb_tool/global/instance/global.dart';
import 'package:flutter/material.dart';

class Terminal extends ADBPage {
  @override
  Widget buildDrawer(BuildContext context) {
    return DrawerItem(
      value: Routes.log,
      groupValue: Global().drawerRoute,
      title: S.of(context).log,
      iconData: Icons.pending_outlined,
      onTap: (index) async {
        // widget.onChanged?.call(index);
      },
    );
  }

  @override
  bool isActive;

  @override
  Widget buildPage(BuildContext context) {
    // TODO: implement buildPage
    throw UnimplementedError();
  }

  @override
  void onTap() {
    // TODO: implement onTap
    throw UnimplementedError();
  }
}
