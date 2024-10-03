import 'package:e_commerce_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BannerWidgets extends StatelessWidget {
  const BannerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: PageView(
        children: [
          Center(child: Text('Banner 1')),
          Center(child: Text('Banner 2')),
          Center(child: Text('Banner 3')),
        ],
      ),
    );
  }
}
