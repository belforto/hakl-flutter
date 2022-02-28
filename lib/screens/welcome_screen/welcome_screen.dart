import 'package:flutter/material.dart';

import '../../components/promo_widget.dart';

/// TODO: GetX - https://pub.dev/packages/get
/// TODO: flutter_staggered_animations - https://pub.dev/packages/flutter_staggered_animations

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          toolbarOpacity: 0.95,
          title: Text(title),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.green),
                ),
              ),
              const Expanded(
                child: PromoWidget(title: 'promooo'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.indigo,
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.sports_basketball,
              ),
              label: 'basketball icon',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.format_list_bulleted_rounded,
              ),
              label: 'Lista terena',
            ),
          ],
        ),
      );
}
