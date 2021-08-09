import 'package:flutter/material.dart';
import 'package:ovo_ui_flutter/Constant/Color.dart';
import 'package:ovo_ui_flutter/Screen/Home/Component/Image_Carousel.dart';

class InfoPromoCarousel extends StatelessWidget {
  const InfoPromoCarousel({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top: 25, bottom: 17),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Info dan Promo Spesial",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  "Lihat Semua",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: cyantext
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Imagecarousel()
        ],
      ),
    );
  }
}