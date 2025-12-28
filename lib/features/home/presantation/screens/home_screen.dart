import 'package:crafty_bay/app/assets_paths.dart';
import 'package:crafty_bay/features/home/presantation/widget/home_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/circle_icon_button.dart';
import '../widget/product_search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            spacing: 16,
            children: [

              ProductSearchField(),
              HomeCarouselSlider(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Row(
        spacing: 4,
        children: [
          SvgPicture.asset(AssetsPaths.vanLogoSvg),
          Spacer(),
          CircleIconButton(icon: Icons.person, onTap: () {}),
          CircleIconButton(icon: Icons.call, onTap: () {}),
          CircleIconButton(icon: Icons.notifications_active, onTap: () {}),
        ],
      ),
    );
  }
}

