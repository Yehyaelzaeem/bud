

import 'package:bud/core/helper/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../resources/colors/color.dart';
import '../../resources/styles/styles.dart';
import '../../themes/colors.dart';
import '../buttons/app_icon.dart';
import '../texts/hint_texts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? title;
  final bool isPassword;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final InputDecoration? inputDecoration;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final TextStyle? hintStyle;
  final TextAlign? textAlign;
  final Widget? prefixIcon;
  final String? prefixIconPath;
  final String ? suffixIconPath;
  final Widget? suffixIcon;
  final int? maxLines;
  final Color? colorBorderSide;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? contentPadding;
  final double radius;
  final bool? isValidator;
  final double? minHeight;
  final double? minwidth;
  final double? maxHeight;
  final TextStyle? style;
  final bool enabled;
    CustomTextField({Key? key, this.controller,this.style,this.minwidth,  this.hintText, this.title, this.isPassword = false, this.onTap, this.onChanged, this.validator, this.inputDecoration, this.keyboardType, this.fillColor, this.hintStyle, this.textAlign, this.prefixIcon, this.maxLines, this.colorBorderSide, this.margin, this.contentPadding, this.suffixIcon, this.radius = 12, this.prefixIconPath, this.suffixIconPath, this.isValidator = true, this.minHeight, this.maxHeight, this.enabled = true }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isVisibility = false;
    // if
    Color? borderColor = colorBorderSide ?? primaryColorDark.withOpacity(0.1);
    return Padding(
      padding: margin ?? 12.paddingBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[HintMediumText(label: title!, fontSize: 14),
            5.height],
          StatefulBuilder(
              builder: (context, setState) {
              return TextFormField(
                onTap: onTap,
                readOnly: onTap != null,
                enabled: enabled,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                textAlign: textAlign ?? TextAlign.start,
                maxLines: maxLines ?? 1,
                keyboardType: isPassword ? TextInputType.visiblePassword : keyboardType,
                style: style ?? (enabled ? TextStyles.font18Black700Weight.copyWith(fontSize: 16) : TextStyles.font18Black700Weight.copyWith(fontSize: 16)),
                obscureText: isVisibility,
                controller: controller,
                textInputAction: TextInputAction.next,
                cursorColor: primaryColor,
                inputFormatters: [
                  if (keyboardType == TextInputType.number) FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: inputDecoration ?? InputDecoration(
                  hintText: hintText,
                  hintStyle: hintStyle ?? TextStyles.font18Black700Weight.copyWith(fontSize: 16),
                  fillColor: fillColor ,
                  filled: true,
                  // prefixIconConstraints:  BoxConstraints(
                  //   minWidth: minHeight?? 35,
                  //   minHeight: minHeight ?? 35,
                  // ),
                  constraints: BoxConstraints(
                    minHeight: minHeight ?? 0.0,
                    maxHeight: maxHeight ?? double.infinity,
                  ),
                  prefixIcon:  prefixIconPath != null ? AppIcon(
                    padding: const EdgeInsets.all(12),
                    icon: prefixIconPath!,  size: 20,) : prefixIcon,
                  suffixIcon: isPassword ?
                  IconButton(
                    icon: Icon(
                      isVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      color: isVisibility ? primaryColor : AppColors.greyColor,
                    ),
                    onPressed: () {
                      isVisibility = !isVisibility;
                      setState(() {});
                    },
                  ) :
                  (suffixIconPath != null ? AppIcon(
                      padding: const EdgeInsets.all(12),
                      icon: suffixIconPath!, size: 0) : suffixIcon),
                  contentPadding: contentPadding,
                  border:  OutlineInputBorder(
                    borderRadius:  BorderRadius.all(Radius.circular(radius ?? 6)),
                    borderSide: BorderSide(color: borderColor),
                  ),
                  focusedBorder:  OutlineInputBorder(
                    borderRadius:  BorderRadius.all(Radius.circular(radius ?? 6)),
                    borderSide: BorderSide(color: primaryColor),
                  ),

                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(radius ?? 6)),
                    borderSide: BorderSide(color: borderColor),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(radius ?? 6)),
                    borderSide: BorderSide(color: errorColor),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(radius ?? 6)),
                    borderSide: BorderSide(color: borderColor),
                  ),
                ),
                validator: (isValidator! &&  validator == null) ? (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                    // return context.getStrings().this_field_is_required;
                  }
                  return null;
                } : validator,
                onChanged: onChanged,
              );
            }
          ),
        ],
      ),
    );
  }
}
