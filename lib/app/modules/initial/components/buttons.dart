import 'package:flutter/material.dart';

class GradientButtonFb1 extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const GradientButtonFb1(
      {required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 110, 238, 135);

    const secondaryColor = Color.fromARGB(255, 95, 197, 46);

    const accentColor = Color(0xffffffff);

    const double borderRadius = 35;

    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient:
                const LinearGradient(colors: [primaryColor, secondaryColor])),
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              alignment: Alignment.center,
              padding: MaterialStateProperty.all(const EdgeInsets.only(
                  right: 45, left: 45, top: 0, bottom: 0)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
              )),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(color: accentColor, fontSize: 16),
          ),
        ));
  }
}

class OutlineButtonFb1 extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const OutlineButtonFb1(
      {required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Colors.green;

    const double borderRadius = 20;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            side: MaterialStateProperty.all(
                const BorderSide(color: primaryColor, width: 1)),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(borderRadius))))),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: primaryColor),
        ),
      ),
    );
  }
}