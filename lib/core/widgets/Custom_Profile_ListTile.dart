import 'package:bud/core/themes/colors.dart';
import 'package:bud/core/widgets/texts/hint_texts.dart';
import 'package:bud/core/widgets/texts/primary_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileListtile extends StatelessWidget {
  const ProfileListtile(
      {super.key,
      required this.title,
      required this.leadingicon,
      required this.subtitle,
      this.ontap});
  final String title;
  final IconData leadingicon;
  final String subtitle;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        size: 40.h,
        leadingicon,
        color: AppColors.primaryColor,
      ),
      //
      //test
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: AppColors.greyColor.withOpacity(0.4),
      ),
      title: PrimaryBoldText(
        label: title,
      ),
      subtitle: HintRegularText(
        label: subtitle,
      ),
      onTap: ontap,
    );
  }
}
