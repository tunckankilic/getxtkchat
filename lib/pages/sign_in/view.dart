import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getxtkchat/common/common.dart';
import 'package:getxtkchat/common/values/values.dart';
import 'package:getxtkchat/pages/sign_in/index.dart';

class SignInPage extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildLogo(),
            const Spacer(),
            _buildThirdPartyLogin(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      width: 110.w,
      margin: EdgeInsets.only(top: 84.h),
      child: Column(
        children: [
          //App Logo
          Container(
            width: 76.w,
            height: 76.w,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 76.w,
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      boxShadow: [
                        Shadows.primaryShadow,
                      ],
                      borderRadius: BorderRadius.circular(35.w),
                    ),
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    "assets/images/ic_launcher.png",
                    width: 76.w,
                    height: 76.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          //App Title
          Container(
            margin: EdgeInsets.only(top: 15.h, bottom: 15.h),
            child: Text(
              "Let's Chat",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.thirdElement,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThirdPartyLogin() {
    return Container(
      margin: EdgeInsets.only(
        bottom: 250.w,
      ),
      width: 295.w,
      child: Column(
        children: [
          Text(
            "Sign in with social networks",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryText,
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              left: 50.w,
              right: 50.w,
            ),
            child: btnFlatButtonWidget(
              onPressed: () {
                controller.handleSignIn("google");
              },
              width: 200.w,
              height: 55.h,
              title: "Google Login",
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(
          //     top: 30.h,
          //     left: 50.w,
          //     right: 50.w,
          //   ),
          //   child: btnFlatButtonWidget(
          //     onPressed: () {},
          //     width: 200.w,
          //     height: 55.h,
          //     title: "Facebook Login",
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              left: 50.w,
              right: 50.w,
            ),
            child: btnFlatButtonWidget(
              onPressed: () {
                controller.handleSignIn("apple");
              },
              width: 200.w,
              height: 55.h,
              title: "Apple Login",
            ),
          ),
        ],
      ),
    );
  }
}
