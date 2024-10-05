import 'package:flutter/cupertino.dart';

import '../../resources/styles/styles.dart';

class PrimaryBoldText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final double? fontSize;

  PrimaryBoldText({
    Key? key,
    required this.label,
    this.textAlign = TextAlign.start,
    this.labelStyle,
    this.labelColor,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      style: labelStyle ??
          TextStyles.font21Black700Weight
              .copyWith(fontSize: fontSize ?? 16, color: labelColor),
    );
  }
}

class PrimaryRegularText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final double? fontSize;

  PrimaryRegularText({
    Key? key,
    required this.label,
    this.textAlign = TextAlign.start,
    this.labelStyle,
    this.labelColor,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      style: labelStyle ??
          TextStyles.font16Black500Weight
              .copyWith(fontSize: fontSize ?? 16, color: labelColor),
    );
  }
}

class PrimaryMediumText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final double? fontSize;

  PrimaryMediumText({
    Key? key,
    required this.label,
    this.textAlign = TextAlign.start,
    this.labelStyle,
    this.labelColor,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      style: labelStyle ??
          TextStyles.font18Black700Weight
              .copyWith(fontSize: fontSize ?? 16, color: labelColor),
    );
  }
}

class SemiBoldPrimaryText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final double? fontSize;

  SemiBoldPrimaryText({
    Key? key,
    required this.label,
    this.textAlign = TextAlign.start,
    this.labelStyle,
    this.labelColor,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      style: labelStyle ??
          TextStyles.font20Black400Weight
              .copyWith(fontSize: fontSize ?? 16, color: labelColor),
    );
  }
}
