import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/resources/colors/color.dart';
import 'package:bud/core/resources/styles/styles.dart';
import 'package:bud/core/routing/routes.dart';
import 'package:bud/core/utils/helper_methods.dart';
import 'package:bud/core/utils/validation.dart';
import 'package:bud/core/widgets/buttons/custom_button.dart';
import 'package:bud/core/widgets/scaffold/common_appbar.dart';
import 'package:bud/core/widgets/text-field/custom_text_field.dart';
import 'package:bud/core/widgets/texts/hint_texts.dart';
import 'package:bud/core/widgets/texts/primary_texts.dart';
import 'package:bud/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  GlobalKey<FormState> fromglobalkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextStyle hintstyle =
      TextStyles.font18CustomGray600Weight.copyWith(color: Colors.grey[350]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: PrimaryRegularText(
        label: LocaleKeys.forgotpassword.tr(),
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: 20.paddingHorizontal + 20.paddingVert,
          child: Form(
            key: fromglobalkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryMediumText(
                  fontSize: 20.sp,
                  label: LocaleKeys.wewillsendyouthenewpassowrd.tr(),
                ),
                5.height,
                HintMediumText(
                  fontSize: 18.h,
                  label: LocaleKeys.pleaseenteryouremail.tr(),
                ),
                20.height,
                CustomTextField(
                  controller: emailcontroller,
                  radius: 30.h,
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: Icon(Icons.email),
                  onChanged: (email) {},
                  hintStyle: hintstyle,
                  hintText: LocaleKeys.enteryouremail.tr(),
                  colorBorderSide: blackColor,
                ),
                10.height,
                customButton(
                    borderRadius: 20.h,
                    buttonText: LocaleKeys.send.tr(),
                    buttonColor: primaryColor,
                    buttonFunc: () {
                      if (fromglobalkey.currentState!.validate()) {
                        if (Validation.isEmailValid(emailcontroller.text)) {
                          context.pushNamedAndRemoveUntil(Routes.loginscreen,
                              predicate: (route) => false);
                          HelperMethods.showSuccessToast(LocaleKeys
                              .newpasswordsuccessfullysentcheckyourinbox
                              .tr());
                        } else {
                          print('not vaild email');
                        }
                      } else {
                        HelperMethods.showErrorToast(
                            LocaleKeys.failedtosendnewpassword);
                      }
                    },
                    buttonWidth: 400.w,
                    buttonTextColor: whiteColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
