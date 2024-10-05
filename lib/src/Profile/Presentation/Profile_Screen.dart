import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/resources/images/app_images.dart';
import 'package:bud/core/themes/colors.dart';
import 'package:bud/core/widgets/Custom_Profile_ListTile.dart';
import 'package:bud/core/widgets/buttons/app_icon_button.dart';
import 'package:bud/core/widgets/buttons/outlined_button.dart';
import 'package:bud/core/widgets/custom_title_row.dart';
import 'package:bud/core/widgets/dialogs/progress_dialog.dart';
import 'package:bud/core/widgets/scaffold/common_appbar.dart';
import 'package:bud/core/widgets/scaffold/common_drawer.dart';
import 'package:bud/core/widgets/texts/hint_texts.dart';
import 'package:bud/core/widgets/texts/primary_texts.dart';
import 'package:bud/generated/assets.dart';
import 'package:bud/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CommonDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: 20.paddingHorizontal + 20.paddingVert,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppIconButton(
                        size: 40.h,
                        icon: Icons.short_text,
                        onPressed: () {},
                      ),
                      PrimaryBoldText(
                        fontSize: 26.sp,
                        label: 'User Name',
                      ),
                      10.height,
                      PrimaryMediumText(
                        label: 'Pet Owner',
                      ),
                      10.height,
                      Container(
                        width: 160.w,
                        height: 14.h,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          backgroundColor: AppColors.greyColor.withOpacity(0.2),
                          valueColor: AlwaysStoppedAnimation<Color>(
                              AppColors.primaryColor),
                          value: 0.77,
                        ),
                      ),
                      10.height,
                      HintRegularText(label: '77% Profile Progress')
                    ],
                  ),
                  Padding(
                    padding: 30.paddingTop,
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: CircleAvatar(
                            radius: 46.h,
                            backgroundImage: AssetImage(AppImages.profieholder),
                          ),
                          radius: 48.h,
                          backgroundColor: AppColors.primaryColor,
                        ),
                        10.height,
                        SecondaryButton(
                          onPressed: () {},
                          fontSize: 20.sp,
                          height: 1.h,
                          width: 100.w,
                          title: 'Edit Profile',
                          textColor: AppColors.blackLightText,
                          borderColor: AppColors.primaryColor,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: AppColors.greyColor.withOpacity(0.1),
              child: Column(
                children: [
                  ProfileListtile(
                    leadingicon: Icons.notifications_active_outlined,
                    title: 'Notifications',
                    subtitle: 'Customize in app notifcations',
                  ),
                  ProfileListtile(
                    leadingicon: Icons.share,
                    title: 'Invite friends',
                    subtitle: 'Expand your expierence with your friends',
                  ),
                  ProfileListtile(
                    leadingicon: Icons.pets,
                    title: 'Become a petsitter',
                    subtitle: 'You can earn upto 100\$ for each job ',
                  ),
                  ProfileListtile(
                    leadingicon: Icons.help_outline_rounded,
                    title: 'Get help',
                    subtitle: '',
                  ),
                  ProfileListtile(
                    leadingicon: Icons.feedback,
                    title: 'Give us a feedback',
                    subtitle: '',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
