import 'package:crafty_bay/features/common/presentation/widget/rating_view.dart';
import 'package:crafty_bay/features/product/presentation/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_color.dart';
import '../../../../app/assets_paths.dart';
import '../../../../app/constants.dart';
import 'favourite_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, ProductDetailsScreen.name);
      },
      child: SizedBox(
        width: 150,
        child: Card(
          elevation: 3,
          shadowColor: AppColor.themeColor.withAlpha(50),
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: .circular(8)
          ),
          child: Column(
            children: [
              Container(
                width: 150,
                height: 90,
                decoration: BoxDecoration(
                    color: AppColor.themeColor.withAlpha(30),
                    borderRadius: .only(
                        topRight: .circular(8),
                        topLeft: .circular(8)
                    ),
                    image: DecorationImage(image: AssetImage(AssetsPaths.dummyImage))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Nike Shoe RG4343 - New Arrival', maxLines: 1, overflow: .ellipsis,),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text('${Constants.takaSign}2342', style: TextStyle(fontWeight: .w600, color: AppColor.themeColor),),
                        RatingView(),
                        FavouriteButton()
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

