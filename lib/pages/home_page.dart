import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:popup_toturial/components/button.dart';
import 'package:popup_toturial/components/menu_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Popup Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 25,
              ),
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.deepPurple[600],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MMDREZA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.deepPurple[200],
                    ),
                  ),
                  MyButton(
                    onTap: () => showPopover(
                      context: context,
                      bodyBuilder: (context) => const MenuItems(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
