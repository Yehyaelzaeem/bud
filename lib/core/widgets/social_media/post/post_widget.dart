import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/widgets/social_media/models/post_model.dart';
import 'package:bud/core/widgets/social_media/post/post_image.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../resources/styles/styles.dart';
import 'bottom_post_widget.dart';
import 'header_post.dart';

class PostWidget extends StatelessWidget {
  final PostModel? postModel;
  const PostWidget({super.key, this.postModel});

  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.white,
     margin: 4.paddingVert,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         HeaderPostWidget(postModel: postModel??PostModel(),),
         Padding(
           padding: 12.paddingHorizontal,
           child: ReadMoreText(
             postModel?.description??'',
             trimLines: 2,
             trimLength: 110,
             textAlign: TextAlign.start,
             style: TextStyles.font16Black500Weight,
             colorClickableText: Colors.blue,
             trimCollapsedText: ' عرض المزيد ',
             moreStyle: TextStyles.font16Black500Weight.copyWith(
                 color: Colors.grey,
                 fontWeight: FontWeight.w500,
                 fontSize: 14
             ),
             lessStyle: TextStyles.font16Black500Weight.copyWith(
                 color: Colors.grey,
                 fontWeight: FontWeight.w500,
                 fontSize: 14
             ),
             trimExpandedText:' عرض أقل ',
           ),
         ),
         12.height,
         PostImageWidgets(listImages: postModel?.images??[]),
         BottomPostWidget(post: postModel??PostModel()),
       ],
     ),
   );
  }
}
