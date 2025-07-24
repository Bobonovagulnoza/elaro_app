import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final Icon icon;
  final String title;
  final Widget actionIcon;
  final void Function()? onTap;
  const ProfileWidget({
    super.key,
    required this.actionIcon,
    required this.icon,
    this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title.tr()),
      trailing: actionIcon,
      onTap: onTap,
    );
  }
}
