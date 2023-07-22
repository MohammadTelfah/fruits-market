import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:fruits_market/features/Auth/presentation/pages/complete_information/complete_information_view.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(10),
        SizedBox(
          height: SizeConfig.defaultSize! * 17,
          child: Image.asset(kLogo),
        ),
        const Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              color: Color(0xff69a03a),
            ),
            children: [
              TextSpan(
                text: 'Fruit Market',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  color: const Color(0xFFdb3236),
                  text: 'Log in with',
                  iconData: FontAwesomeIcons.googlePlusG,
                  onTap: () {
                    Get.to(
                      () => const CompleteInformationView(),
                      duration: const Duration(milliseconds: 500),
                      transition: Transition.rightToLeft,
                    );
                  },
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  color: const Color(0xFF4267B2),
                  iconData: FontAwesomeIcons.facebookF,
                  text: 'Log in with',
                  onTap: () {
                    Get.to(
                      () => const CompleteInformationView(),
                      duration: const Duration(milliseconds: 500),
                      transition: Transition.rightToLeft,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
