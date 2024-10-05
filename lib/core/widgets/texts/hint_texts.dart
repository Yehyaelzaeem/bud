import 'package:bud/core/resources/styles/styles.dart';
import 'package:flutter/cupertino.dart';

class HintBoldText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final double? fontSize;

  HintBoldText({
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
          TextStyles.font21Hint700Weight.copyWith(
              fontSize: fontSize ?? 16,
              color: labelColor,
              fontWeight: FontWeight.bold),
    );
  }
}

class HintRegularText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final double? fontSize;

  HintRegularText({
    Key? key,
    required String this.label,
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
          TextStyles.font16CustomGray500Weight
              .copyWith(fontSize: fontSize ?? 14, color: labelColor),
    );
  }
}

class HintMediumText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final TextStyle? style;
  final Color? labelColor;
  final double? fontSize;
  final double? height;

  HintMediumText({
    Key? key,
    required this.label,
    this.textAlign = TextAlign.start,
    this.style,
    this.height,
    this.labelColor,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      style: style ??
          TextStyles.font18CustomGray600Weight.copyWith(
              fontSize: fontSize ?? 16, height: height, color: labelColor),
    );
  }
}

class HintSemiBoldText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final TextStyle? style;
  final Color? labelColor;
  final double? fontSize;

  HintSemiBoldText({
    Key? key,
    required this.label,
    this.textAlign = TextAlign.start,
    this.style,
    this.labelColor,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      style: style ??
          TextStyles.font20CustomGray400Weight
              .copyWith(fontSize: fontSize ?? 16, color: labelColor),
    );
  }
}
