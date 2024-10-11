import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/resources/colors/color.dart';
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
import 'package:bud/src/auth/logic/auth_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/networking/api_constants.dart';
import '../../../core/resources/images/app_images.dart';
import '../../../core/widgets/buttons/primary_button.dart';
import '../../../core/widgets/texts/black_texts.dart';
import '../data/models/login_params.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  GlobalKey<FormState> fromGlobalKey = GlobalKey<FormState>();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: PrimaryRegularText(
        label: LocaleKeys.signin.tr(),
      )),

      body: SingleChildScrollView(
        padding: 20.paddingHorizontal + 20.paddingVert,
        child:  Form(
          key: fromGlobalKey,
          child: Column(
            children: [
              BlackBoldText(
                fontSize: 18.sp,
                label: LocaleKeys.welcomeback.tr(),
              ),
              10.height,
              HintRegularText(
                fontSize: 16.h,
                textAlign: TextAlign.center,
                label: LocaleKeys.siginwithphoneandpassword.tr(),
              ),
              20.height,
              CustomTextField(
                radius: 12.r,
                controller: phoneNumberController,
                borderColor2: Colors.grey.shade300.withOpacity(0.6),
                suffixIcon:  Icon(Icons.phone,color: Colors.grey.shade700,),
                keyboardType: TextInputType.number,
                onChanged: ( String phoneNumber) {},
                hintText: LocaleKeys.enteryourphonenumber.tr(),
              ),
              20.height,
              CustomTextField(
                controller: passwordController,
                radius: 12.r,
                borderColor2: Colors.grey.shade300.withOpacity(0.6),
                onChanged: ( String password) {},
                isPassword: true,
                hintText: LocaleKeys.enteryourpassword.tr(),
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
              40.height,
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return
                    PrimaryButton(
                      width: 300.w,
                      height: 50.h,
                      radius: 12.r,
                      isLoading: state.loginState == RequestState.loading,
                      title: LocaleKeys.signin.tr(),
                      onPressed: () {
                        if (fromGlobalKey.currentState!.validate()) {
                          context.read<AuthCubit>().login(phoneNumberController.text, passwordController.text);

                        }
                      },
                    );
                },
              ),
              10.height,
              AppCircularIconButton(
                onPressed: () {},
                icon: AppImages.googleIcon,
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
                    style: TextStyles.font16Black500Weight.copyWith(color: primaryColor),
                    title: LocaleKeys.signup.tr(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
