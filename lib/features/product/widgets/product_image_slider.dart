import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/app/app_color.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({super.key});

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {

  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 240,
            viewportFraction: 1,
            autoPlay: false,
            onPageChanged: (index, reason) {
              _selectedIndex.value = index;
            },
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.withAlpha(50),
                  alignment: .center,
                  child: Text('Images $i', style: TextStyle(fontSize: 16.0)),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 8,),
        Positioned(
          bottom: 8,
          right: 0,
          left: 0,
          child: ValueListenableBuilder(
            valueListenable: _selectedIndex,
            builder: (context, selectedIndex, _) {
              return Row(
                mainAxisAlignment: .center,
                spacing: 4,
                children: [
                  for(int i=0; i<5; i++)
                    Container(width: 12, height: 12, decoration: BoxDecoration(
                        color: i == selectedIndex ? AppColor.themeColor : null,
                        border: Border.all(color: Colors.grey),
                      borderRadius: .circular(16)
                    ),)
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
