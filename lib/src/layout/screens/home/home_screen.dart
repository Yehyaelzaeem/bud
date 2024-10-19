import 'package:bud/core/widgets/social_media/models/post_model.dart';
import 'package:bud/core/widgets/social_media/models/provider_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/social_media/post/post_widget.dart';
import 'data_test.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...postsList.map((e) => PostWidget(
                    postModel:e

                ) )

              ],
            ),
          )
        )
    );
  }
}

