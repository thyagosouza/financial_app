import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

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
              child: Container(child: Image.asset('assets/images/man.png'))),
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
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Get Started'),
                ),
                Text(
                  'Already have account? Log In',
                  style: AppTextStyles.smallText
                      .copyWith(color: AppColors.greyDark),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}