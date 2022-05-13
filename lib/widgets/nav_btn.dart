import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final Widget page;
  final IconData icon;
  final Color backgroundColor;

  const NavButton({
    Key? key,
    required this.page,
    required this.icon,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      width: double.infinity,
      child: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => page,
            ),
          );
        },
        icon: Icon(icon),
      ),
    );
  }
}
