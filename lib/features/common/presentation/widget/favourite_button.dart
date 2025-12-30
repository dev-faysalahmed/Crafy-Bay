import 'package:flutter/material.dart';

import '../../../../app/app_color.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: .circular(4)
      ),
      color: AppColor.themeColor,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Icon(Icons.favorite_border_outlined, color: Colors.white, size: 18,),
      ),
    );
  }
}