import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PortfolioContainer extends StatelessWidget {
  final String image;
  final String abb;
  final String name;
  final String price;
  final String downPrice;
  final Color today;
  final String? img;
  final double? imgHeight;
  final double? imgWidth;

  const PortfolioContainer({
    super.key,
    required this.image,
    required this.abb,
    required this.name,
    required this.price,
    required this.downPrice,
    required this.today,
    this.img,
    this.imgHeight,
    this.imgWidth
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 32.h,
            width: 32.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),

            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                abb,
                style: TextStyle(
                  color: Color(0xff474D66),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  color: Color(0xff696F8C),
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),

          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: TextStyle(
                  color: Color(0xff101840),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Inter",
                ),
              ),
              Row(

                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                      color: today,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Inter",
                    ),
                  ),
                  SizedBox(width: 5.h,),

                  Image.asset(
                    img??"assets/images/arrow-down.png",
                    height: imgHeight??10,
                    width: imgWidth??10,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    downPrice,
                    style: TextStyle(
                      color: Color(0xff696F8C),
                      fontFamily: "Inter",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
