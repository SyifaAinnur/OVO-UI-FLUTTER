import 'package:flutter/material.dart';
import 'package:ovo_ui_flutter/Constant/Color.dart';

class OVOCash extends StatelessWidget {
  const OVOCash({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:20, vertical:5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),
              children: <InlineSpan> [
                TextSpan(
                  text: "OVO", style: TextStyle(
                    fontSize: 16,
                  )
                ),
                WidgetSpan(
                  child: SizedBox(
                    width: 8,
                  )
                ),
                TextSpan(
                  text: "Cash", style: TextStyle(
                    fontSize: 14
                  )
                )
              ]
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rp",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "999.999.999",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              )
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Text(
                "OVO Points",
                style: TextStyle(
                  fontWeight:FontWeight.w600,
                  color: Colors.white,
                  fontSize: 14
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "98.000",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: orangetext
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}