import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/resources/colors/color.dart';
import 'package:bud/core/resources/images/app_icons.dart';
import 'package:bud/core/resources/styles/styles.dart';
import 'package:bud/core/routing/routes.dart';
import 'package:bud/core/widgets/buttons/app_circular_icon_button.dart';
import 'package:bud/core/widgets/buttons/custom_button.dart';
import 'package:bud/core/widgets/buttons/label_button.dart';
import 'package:bud/core/widgets/checkbox/custom_checkbox.dart';
import 'package:bud/core/widgets/scaffold/common_appbar.dart';
import 'package:bud/core/widgets/text-field/custom_text_field.dart';
import 'package:bud/core/widgets/texts/hint_texts.dart';
import 'package:bud/core/widgets/texts/primary_texts.dart';
import 'package:bud/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> fromglobalkey = GlobalKey<FormState>();
  TextStyle hintstyle =
      TextStyles.font18CustomGray600Weight.copyWith(color: Colors.grey[350]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: PrimaryRegularText(
        label: LocaleKeys.signin.tr(),
      )),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: 20.paddingHorizontal + 20.paddingVert,
            child: Form(
              key: fromglobalkey,
              child: Column(
                children: [
                  PrimaryBoldText(
                    fontSize: 26.sp,
                    label: LocaleKeys.welcomeback.tr(),
                  ),
                  HintMediumText(
                    fontSize: 18.h,
                    textAlign: TextAlign.center,
                    label: LocaleKeys.siginwithphoneandpassword.tr(),
                  ),
                  20.height,
                  CustomTextField(
                    radius: 30.h,
                    suffixIcon: Icon(Icons.phone),
                    keyboardType: TextInputType.number,
                    onChanged: (phonenumber) {},
                    hintStyle: hintstyle,
                    hintText: LocaleKeys.enteryourphonenumber.tr(),
                    colorBorderSide: blackColor,
                  ),
                  20.height,
                  CustomTextField(
                    radius: 30.h,
                    suffixIcon: Icon(Icons.lock),
                    onChanged: (password) {},
                    hintStyle: hintstyle,
                    isPassword: true,
                    hintText: LocaleKeys.enteryourpassword.tr(),
                    colorBorderSide: blackColor,
                  ),
                  10.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCheckbox(
                        title: LocaleKeys.rememberme.tr(),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(Routes.forgotpasswordscreen);
                        },
                        child: PrimaryRegularText(
                          labelStyle: TextStyles.font16Black500Weight
                              .copyWith(decoration: TextDecoration.underline),
                          label: LocaleKeys.forgotpassword.tr(),
                        ),
                      )
                    ],
                  ),
                  10.height,
                  customButton(
                      borderRadius: 20.h,
                      buttonText: LocaleKeys.signin.tr(),
                      buttonColor: primaryColor,
                      buttonFunc: () {
                        if (fromglobalkey.currentState!.validate()) {
                          context.pushNamed(Routes.profilescreen);

                          print('valid');
                        } else {
                          print('not valid');
                        }
                      },
                      buttonWidth: 400.w,
                      buttonTextColor: whiteColor),
                  10.height,
                  AppCircularIconButton(
                    onPressed: () {},
                    icon: AppIcons.googlelogo,
                    backgroundColor: grayScaleColor,
                  ),
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrimaryRegularText(
                        label: LocaleKeys.donthavaeanaccount.tr(),
                      ),
                      5.width,
                      LabelButton(
                        onTap: () {
                          context.pushNamed(Routes.registerscreen);
                        },
                        style: TextStyles.font16Black500Weight
                            .copyWith(color: primaryColor),
                        title: LocaleKeys.signup.tr(),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
