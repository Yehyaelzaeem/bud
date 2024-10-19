import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/widgets/social_media/post/post_popup_menu.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../images/image_network.dart';
import '../../texts/black_texts.dart';
import '../../texts/hint_texts.dart';
import '../models/post_model.dart';

class HeaderPostWidget extends StatelessWidget {
  final PostModel? postModel;
  const HeaderPostWidget({super.key, this.postModel});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: 16.paddingHorizontal+8.paddingVert,
        child:
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ImageNetworkCircle(
              image: postModel?.provider?.image??'',
              width: 40.w,
              height: 40.w,
            ),
            10.width,
            Expanded(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,   
                  children: [
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlackBoldText(
                          label:postModel?.provider?.name??'',
                          fontSize: 16.sp,
                        ),
                        HintRegularText(
                          label: postModel?.createdAt??'',
                          fontSize: 10.sp,
                        ),
                      ],
                    )),
                    PopUpMenuPostWidget(postModel: postModel??PostModel(),
                    )
                  ],
                ),


              ],
            ))
          ],
        ),
      );
  }
}
