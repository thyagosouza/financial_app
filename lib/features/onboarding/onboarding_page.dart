// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';

import '../../common/widgets/primary_button_widget.dart';
import '../../common/widgets/multi_text_button_widget.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Image.asset('assets/images/man.png'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            color: AppColors.white,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    'Spend Smarter \n Save More',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.onboarding
                        .copyWith(color: AppColors.greenLight2),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(32, 17, 32, 4),
                  child: PrimaryButtonWidget(
                    text: 'Get Started',
                    onPressed: () {},
                    sizeH: 48,
                  ),
                ),
                MultiTextButtonWidget(
                  onPressed: () => log('pressed'),
                  children: [
                    Text(
                      'Already have account?  ',
                      style: AppTextStyles.smallText
                          .copyWith(color: AppColors.greyDark),
                    ),
                    Text(
                      'Log In',
                      style: AppTextStyles.smallText
                          .copyWith(color: AppColors.greenLight1),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
