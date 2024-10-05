
import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/resources/styles/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/routing/routes.dart';
import '../../../core/utils/helper_methods.dart';
import '../../../core/widgets/buttons/label_button.dart';
import '../../../core/widgets/texts/black_texts.dart';
import '../../../core/widgets/texts/hint_texts.dart';
import '../../../generated/locale_keys.g.dart';

class OnboardingItem extends StatelessWidget {
  final OnboardingModel item;

  OnboardingItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        (kToolbarHeight ).height,
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Align(
             alignment: AlignmentDirectional.topStart,
             child: LabelButton(
               title:LocaleKeys.skip.tr(),
               style: TextStyles.font16Black500Weight.copyWith(fontSize: 18),
               onTap: () async {
                 // pushNamedAndRemoveUntil(Routes.intro);
                 // await HelperMethods.setFirstTime();
               },
             ),
           ),
           Align(
             alignment: AlignmentDirectional.topStart,
             child: LabelButton(
               title:LocaleKeys.changeLanguage.tr(),
               style: TextStyles.font16Black500Weight.copyWith(fontSize: 16),
               onTap: () async {
                 if (context.locale == const Locale('en')) {
                   await context.setLocale(const Locale('ar'));
                 } else {
                   await context.setLocale(const Locale('en'));
                 }
                 context.pushNamedAndRemoveUntil(Routes.onBoardingScreen, predicate: (Route<dynamic> route) { return false; });
               },
             ),
           ),
         ],
       ),
        60.height,
        Image.asset(
          item.image,
          height: 250,
        ),
        20.height,
        Padding(
          padding: 10.paddingVert,
          child: BlackBoldText(
            label: item.title,
          ),
        ),
       Padding(
          padding: 16.paddingHorizontal,
          child: HintMediumText(
            label: item.description,
            fontSize: 14,
            height: 1.5,
            labelColor: Colors.grey.shade400,
            textAlign: TextAlign.center,
          ),)
      ],
    );
  }
}

class OnboardingModel {
  String title;
  String description;
  String image;
  bool? isImageStart;

  OnboardingModel(
      {required this.title,
      required this.description,
      required this.image,
      this.isImageStart});
}
