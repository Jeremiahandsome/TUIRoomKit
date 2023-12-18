import 'package:flutter/material.dart';
import 'package:rtc_conference_tui_kit/common/index.dart';

class SettingItemWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final void Function()? onChildTap;
  const SettingItemWidget(
      {super.key, required this.title, required this.child, this.onChildTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: RoomTheme.defaultTheme.textTheme.bodyLarge,
        ),
        GestureDetector(
          onTap: () => onChildTap!(),
          child: child,
        ),
      ],
    );
  }
}