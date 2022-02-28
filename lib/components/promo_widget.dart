import 'package:flutter/material.dart';

class PromoWidget extends StatelessWidget {
  const PromoWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) => Container(
        height: double.infinity,
        width: double.infinity,
        foregroundDecoration: BoxDecoration(color: Colors.white70.withOpacity(0.5)),
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.red, width: 3),
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          image: const DecorationImage(
            fit: BoxFit.fitWidth,
            image: NetworkImage(
              'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/04c6e97d-d3d8-4f8c-9bc5-7c3d0f9cd26f/kd14-basketball-shoe-5p4dsN.png',
            ),
          ),
        ),
      );
}
