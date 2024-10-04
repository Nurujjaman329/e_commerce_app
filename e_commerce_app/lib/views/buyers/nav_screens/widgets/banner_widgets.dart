import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BannerWidgets extends StatefulWidget {
  @override
  State<BannerWidgets> createState() => _BannerWidgetsState();
}

class _BannerWidgetsState extends State<BannerWidgets> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final List _bannerImage = [];

  getBanners() {
    return _firestore
        .collection('banners')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        setState(() {
          _bannerImage.add(doc['image']);
        });
      });
    });
  }

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
