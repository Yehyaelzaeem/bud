import 'dart:async';

import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/resources/colors/color.dart';
import 'package:bud/core/routing/routes.dart';
import 'package:bud/core/widgets/texts/hint_texts.dart';
import 'package:easy_localization/easy_localization.dart' as tr;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/themes/colors.dart';
import '../../../core/utils/helper_methods.dart';
import '../../../core/widgets/buttons/primary_button.dart';
import '../../../generated/locale_keys.g.dart';
import '../widgets/background_images.dart';
import '../widgets/onboarding_item.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  PageController? controller =
      PageController(initialPage: 0, viewportFraction: 1.0);
  int index = 0;
  StreamController<int> pageStream = StreamController<int>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: 20.paddingAll,
        child: Stack(
          children: [
            PageView.builder(
              controller: controller,
              reverse: false,
              itemCount: BackgroundImages.data(context).length,
              onPageChanged: (index) {
                pageStream.add(index);
              },
              itemBuilder: (context, index) {
                return OnboardingItem(
                  item: BackgroundImages.data(context)[index],
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: floatingActionButton(context),
    );
  }

  Widget floatingActionButton(BuildContext context) {
    return Padding(
      padding: 40.paddingBottom + 30.paddingStart,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StreamBuilder<int>(
                initialData: 0,
                stream:
                    pageStream.stream, // Listen to the stream for page changes
                builder: (context, snapshot) {
                  final currentPage = snapshot.data ?? 0;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        margin: 20.paddingBottom,
                        child: AnimatedSmoothIndicator(
                          activeIndex: currentPage,
                          count: BackgroundImages.data(context).length,
                          textDirection: TextDirection.ltr,
                          effect: ExpandingDotsEffect(
                            dotHeight: 10,
                            dotWidth: 10,
                            dotColor: AppColors.greyColor.withOpacity(0.3),
                            activeDotColor: primaryColor,
                          ),
                        ),
                      ),
                      Center(
                        child: PrimaryButton(
                          width: 320.w,
                          title: currentPage == 2
                              ? LocaleKeys.getStarted.tr()
                              : LocaleKeys.next.tr(),
                          margin: 30.paddingVert,
                          onPressed: () {
                            if (controller?.hasClients ?? false) {
                              if (currentPage ==
                                  BackgroundImages.data(context).length - 1) {
                                context.pushNamedAndRemoveUntil(
                                  Routes.loginscreen,
                                  predicate: (route) => false,
                                );
                                HelperMethods.setFirstTime();
                              } else {
                                controller?.animateToPage(
                                  currentPage + 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              }
                            }
                          },
                        ),
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
