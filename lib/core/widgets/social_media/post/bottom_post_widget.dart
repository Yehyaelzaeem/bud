import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/resources/images/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_plus/share_plus.dart';
import '../../../networking/api_constants.dart';
import '../models/post_model.dart';

class BottomPostWidget extends StatelessWidget {
  final PostModel post;

  const BottomPostWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
     StatefulBuilder(builder: (context, setState) {
      return Column(
          children: [
            Container(
              padding: 15.paddingHorizontal,
              margin:13.paddingVert,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    (post.likes != null && post.likes != 0)
                        ? "${post.likes!} Likes"
                        : "No Likes",
                    style: const TextStyle(color: Color(0xFF898E92), fontSize: 14),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey.shade300,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () async {
                      setState(() {
                        post.isLikedBy = !(post.isLikedBy??false);
                        post.likes =( post.isLikedBy??false) ? (post.likes??0) + 1 : (post.likes??0) - 1;
                      });
                      // if (appAuthState) {
                      //   _bloc.add(GetLikePost((b) => b..id = post.id));
                      // } else {
                      //   showLogin(context);
                      // }
                    },
                    label: Text(
                      'Like',
                      style: TextStyle(
                        color:
                        !(post.isLikedBy??false) ? const Color(0xFF898E92) : Colors.blue.shade600,
                      ),
                    ),
                    icon:  !(post.isLikedBy??false)
                        ? SvgPicture.asset(
                      AppIcons.like,
                    )
                        : SvgPicture.asset(
                      AppIcons.fillLike,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        post.commentCount?.toString() ?? '',
                        style: const TextStyle(color: Color(0xFF898E92)),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          // Navigator.of(context).push(
                          //   PageTransition(
                          //       duration: Duration(milliseconds: 400),
                          //       type: PageTransitionType.bottomToTop,
                          //       child: PostComments(
                          //         postData: post,
                          //       )),
                          // );
                        },
                        label: const Text(
                          'Comment',
                          style: TextStyle(color: Color(0xFF898E92)),
                        ),
                        icon: SvgPicture.asset(
                          AppIcons.comment,
                        ),
                      )
                    ],
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Share.share('${ApiConstants.baseUrl}post/${post.id}');
                    },
                    label: const Text(
                      'Share',
                      style: TextStyle(color: Color(0xFF898E92)),
                    ),
                    icon: SvgPicture.asset(
                      AppIcons.share,
                    ),
                  ),
                ],
              ),
            )
          ],
        );
     });
  }
}
