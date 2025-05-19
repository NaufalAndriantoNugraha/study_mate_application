import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isOn;
  final Function? onClick;

  const NavigationItem({
    super.key,
    required this.imageUrl,
    required this.isOn,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {onClick!()},
      child: Image.asset(
        imageUrl,
        width: 50,
        height: 50,
        color:
            isOn
                ? Color.fromRGBO(0, 109, 255, 100)
                : Color.fromRGBO(154, 154, 154, 1),
      ),
    );
  }
}
