import 'package:flutter/material.dart';

void main() {
  runApp(Flag());
}

class Flag extends StatelessWidget {
  const Flag({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TurkBayragi(g: 200),
        ],
      ),
    );
  }
}

class TurkBayragi extends StatelessWidget {
  int g;

  TurkBayragi({required this.g});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1.5 * g,
        height: g * 1.0,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            Container(
              height: 20,
              width: 20,
              color: Colors.red,
            ),
            WhiteMoon(g: g),
            RedMoon(g: g),
            Positioned(
              left: 0.7 * g,
              top: 0.375 * g,
              child: Transform(
                transform: Matrix4.rotationZ(-0.2),
                alignment: FractionalOffset.center,
                child: Icon(
                  Icons.star,
                  size: 0.25 * g,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RedMoon extends StatelessWidget {
  const RedMoon({
    super.key,
    required this.g,
  });

  final int g;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.3 * g,
      left: 0.3625 * g,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle, //şeklini belirlemek için kulllanılan özellik
          color: Colors.red, //dışarıda belirtilen renk içerisinde belirtildi
        ),
        height: 0.4 * g,
        width: 0.4 * g,
      ),
    );
  }
}

class WhiteMoon extends StatelessWidget {
  const WhiteMoon({
    super.key,
    required this.g,
  });

  final int g;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.25 * g,
      left: 0.25 * g,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle, //şeklini belirlemek için kulllanılan özellik
          color: Colors.white, //dışarıda belirtilen renk içerisinde belirtildi
        ),
        height: 0.5 * g,
        width: 0.5 * g,
      ),
    );
  }
}

Widget RedBox = Container(
  height: 20,
  width: 20,
  color: Colors.red,
);
Widget WhiteBox = Container(
  height: 100,
  width: 100,
  color: Colors.pink,
);

Widget star = Icon(
  Icons.star,
  size: 50,
  color: Colors.white,
);

Widget WhiteMoonBox = (Container(
  height: 100,
  width: 100,
  color: Colors.white,
));

Widget RedMoonBox = (Container(
  height: 100,
  width: 100,
  color: Colors.red,
));
