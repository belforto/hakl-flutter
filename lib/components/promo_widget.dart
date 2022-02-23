import 'package:flutter/material.dart';

class PromoWidget extends StatefulWidget {
  const PromoWidget({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<PromoWidget> createState() => _PromoWidgetState();
}

class _PromoWidgetState extends State<PromoWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Container(
      height: double.infinity,
      width: double.infinity,
      foregroundDecoration:
          BoxDecoration(color: Colors.white70.withOpacity(0.5)),
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(color: Colors.red, width: 3),
        borderRadius: BorderRadius.all(Radius.circular(18)),
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: NetworkImage(
            'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/04c6e97d-d3d8-4f8c-9bc5-7c3d0f9cd26f/kd14-basketball-shoe-5p4dsN.png',
          ),
        ),
      ),
    );
  }
}
