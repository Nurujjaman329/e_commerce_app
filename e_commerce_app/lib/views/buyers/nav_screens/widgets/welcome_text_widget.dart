import 'package:flutter/cupertino.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Hey, \nWhat Are You Looking For!",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Icon(CupertinoIcons.cart),
      ],
    );
  }
}
