import 'package:bud/core/widgets/images/custom_image_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../resources/images/app_icons.dart';
import '../models/post_model.dart';

class PopUpMenuPostWidget extends StatelessWidget {
  final PostModel? postModel;
  const PopUpMenuPostWidget({super.key, this.postModel});

  @override
  Widget build(BuildContext context) {
    return  PopupMenuButton(
      icon: CustomImageSvg(
        image: AppIcons.popUpMenu,
      ),
      itemBuilder: (BuildContext context) { return [
      const PopupMenuItem(child:     Row(
        children: [
          Icon(Icons.delete_outline_rounded),
          SizedBox(
            width: 10,
          ),
          Text("حذف المنشور")
        ],
      ),),
      const PopupMenuItem(child:     Row(
        children: [
          Icon(Icons.warning_rounded),
          SizedBox(
            width: 10,
          ),
          Text("حظر المنشور")
        ],
      ),)
    ]; },);
  }
}
