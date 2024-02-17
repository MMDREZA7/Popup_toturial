import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:popup_toturial/components/menu_items.dart';

class MyButton extends StatelessWidget {
  void Function()? onTap;

  MyButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(
          context: context,
          bodyBuilder: (context) => const MenuItems(),
          width: 250,
          height: 150,
          backgroundColor: Colors.deepPurple.shade100,
          direction: PopoverDirection.top),
      child: Icon(
        Icons.more_vert,
        color: Colors.deepPurple[200],
      ),
    );
  }
}
