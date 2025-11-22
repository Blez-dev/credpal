import 'package:credpal/reusable_widgets/portfolio_container.dart';
import 'package:credpal/state_manager/credpal_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Credpal extends ConsumerWidget {
  const Credpal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final credpalState = ref.watch(credpalProvider);
    final credpalAction = ref.read(credpalProvider.notifier);
    return Scaffold(
      backgroundColor: Color(0xffFEFEFE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(height: 12.h),
                Row(
                  children: [
                    Container(
                      height: 32.h,
                      width: 137.h,
                      decoration: BoxDecoration(
                        color: Color(0xffF9FAFC),
                        border: Border.all(
                          color: Color(0xffE6E8F0),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 4,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 24.h,
                              width: 24.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.asset("assets/images/user_icon.png"),
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              "Obinna N.",
                              style: TextStyle(
                                color: Color(0xff101840),
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/images/expanded_down.png",
                              width: 17.w,
                              height: 17.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/images/bell_icon.png",
                      height: 17.66.h,
                      width: 16.w,
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xff030303),
                  ),
                  height: 180.h,
                  width: 343.w,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Opacity(
                        opacity: 0.06,
                        child: Image.asset(
                          "assets/images/container_background.png",
                          fit: BoxFit.none,
                          height: 100.h,
                          width: 100.w,
                        ),
                      ),
                      Positioned(
                        top: 25,
                        left: 20,
                        right: 20,
                        bottom: 25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Wallet Balance",
                                  style: TextStyle(
                                    color: Color(0xffD8DAE5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "₦7,852,000",
                                  style: TextStyle(
                                    color: Color(0xffF9FAFC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24.sp,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total Active Portfolio",
                                      style: TextStyle(
                                        color: Color(0xffD8DAE5),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                    Text(
                                      "₦ 1,500,000",
                                      style: TextStyle(
                                        color: Color(0xffF9FAFC),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/images/eye_icon.png",
                              height: 13.33.w,
                              width: 18.33.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Center(
                  child: Image.asset(
                    "assets/images/bubble.png",
                    height: 6.h,
                    width: 50.w,
                  ),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 48.h,
                            width: 48.h,
                            decoration: BoxDecoration(
                              color: Color(0xffF9FAFC),
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/add.png",
                                width: 22.w,
                                height: 22.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 22.h),
                          Text(
                            "Fund Wallet",
                            style: TextStyle(
                              color: Color(0xff696F8C),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 48.h,
                            width: 48.h,
                            decoration: BoxDecoration(
                              color: Color(0xffF9D900),
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/buy_stock.png",
                                width: 22.w,
                                height: 22.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 22.h),
                          Text(
                            "Fund Wallet",
                            style: TextStyle(
                              color: Color(0xff696F8C),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 48.h,
                            width: 48.h,
                            decoration: BoxDecoration(
                              color: Color(0xffF9FAFC),
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/sell_stock.png",
                                width: 22.w,
                                height: 22.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 22.h),
                          Text(
                            "Sell Stock",
                            style: TextStyle(
                              color: Color(0xff696F8C),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 48.h,
                            width: 48.h,
                            decoration: BoxDecoration(
                              color: Color(0xffF9FAFC),
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/wallet-money.png",
                                width: 22.w,
                                height: 22.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 22.h),
                          Text(
                            "Withdraw",
                            style: TextStyle(
                              color: Color(0xff696F8C),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 36.h),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/calendar.png",
                      height: 16.h,
                      width: 16.w,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "All time",
                      style: TextStyle(
                        color: Color(0xff474D66),
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        fontFamily: "Inter",
                      ),
                    ),
                    SizedBox(width: 8),
                    Image.asset(
                      "assets/images/down_icon.png",
                      height: 10.h,
                      width: 10.w,
                    ),
                    SizedBox(width: 8),
                    Spacer(),
                    Image.asset(
                      "assets/images/expanded_icon.png",
                      height: 16.h,
                      width: 16.w,
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "₦ 7,852,000",
                      style: TextStyle(
                        color: Color(0xff101840),
                        fontWeight: FontWeight.w500,
                        fontSize: 17.sp,
                      ),
                    ),
                    SizedBox(width: 5),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        "Asset Holdings",
                        style: TextStyle(
                          color: Color(0xff696F8C),
                          fontWeight: FontWeight.w500,
                          fontSize: 11.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 37.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            credpalAction.toggle("0");
                          },
                          child: Column(
                            children: [
                              Text(
                                "Active Portfolio",

                                style: TextStyle(
                                  color: credpalState.flag == "0"
                                      ? Color(0xff101840)
                                      : Color(0xff696F8C),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Inter",
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Container(
                                height: 2.h,
                                width: 94.w,
                                decoration: BoxDecoration(
                                  color: credpalState.flag == "0"
                                      ? Color(0xffF9D900)
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        GestureDetector(
                          onTap: () {
                            credpalAction.toggle("1");
                          },
                          child: Column(
                            children: [
                              Text(
                                "Top Gainers",

                                style: TextStyle(
                                  color: credpalState.flag == "1"
                                      ? Color(0xff101840)
                                      : Color(0xff696F8C),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Inter",
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Container(
                                height: 2.h,
                                width: 94.w,
                                decoration: BoxDecoration(
                                  color: credpalState.flag == "1"
                                      ? Color(0xffF9D900)
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        GestureDetector(
                          onTap: () {
                            credpalAction.toggle("2");
                          },
                          child: Column(
                            children: [
                              Text(
                                "Top Losers",

                                style: TextStyle(
                                  color: credpalState.flag == "2"
                                      ? Color(0xff101840)
                                      : Color(0xff696F8C),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Inter",
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Container(
                                height: 2.h,
                                width: 94.w,
                                decoration: BoxDecoration(
                                  color: credpalState.flag == "2"
                                      ? Color(0xffF9D900)
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Image.asset(
                        "assets/images/setting-5.png",
                        height: 16.h,
                        width: 16.w,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 0,
                  decoration: BoxDecoration(
                    border: BoxBorder.all(
                      color: Color(0xffE6E8F0),
                      width: 0.5.w,
                    ),
                  ),
                ),
                SizedBox(height: 27.h),
                PortfolioContainer(
                  image: "assets/images/fcmb_image.png",
                  abb: "FCMB",
                  name: "First City Monument Bank",
                  price: "₦12.35",
                  downPrice: "₦11.15",
                  today: Color(0xffD14343),
                ),

                PortfolioContainer(
                  image: "assets/images/mtn.png",
                  abb: "MTN",
                  name: "MTN Nigeria",
                  price: "₦200.35",
                  downPrice: "₦195.15",
                  today: Color(0xffD14343),
                ),

                PortfolioContainer(
                  image: "assets/images/gt.png",
                  abb: "GTCO",
                  imgHeight: 6.h,
                  imgWidth: 6.w,
                  img: "assets/images/up_price.png",
                  name: "Guarantee Trust Bank",
                  price: "₦65.35",
                  downPrice: "₦69.15",
                  today: Color(0xff317159),
                ),
                PortfolioContainer(
                  image: "assets/images/first_bank.png",
                  abb: "FBNH",

                  name: "First Holding Co",
                  price: "₦200.35",
                  downPrice: "₦195.15",
                  today: Color(0xffD14343),
                ),
                PortfolioContainer(
                  image: "assets/images/zenith.png",
                  abb: "ZENITHBK",

                  name: "Zenith Bank Nigeria",
                  price: "₦200.35",
                  downPrice: "₦195.15",
                  today: Color(0xffD14343),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
