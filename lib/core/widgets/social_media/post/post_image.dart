import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../images/custom_cach_image.dart';

class PostImageWidgets extends StatelessWidget {
  final List<String> listImages;
  const PostImageWidgets({super.key, required this.listImages});

  @override
  Widget build(BuildContext context) {
    PageController secondPageController = PageController();
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width-10,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 0),
              child: PageView.builder(
                itemCount: listImages.length,
                controller: secondPageController,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            PageController thiredPageController =
                            PageController();
                            return Stack(
                              children: [
                                PhotoViewGallery.builder(
                                  pageController: thiredPageController,
                                  scrollPhysics: const BouncingScrollPhysics(),
                                  builder: (context, int index) {
                                    return PhotoViewGalleryPageOptions(
                                      imageProvider: CachedNetworkImageProvider(
                                          listImages[index]),
                                      initialScale:
                                      PhotoViewComputedScale.covered,
                                      heroAttributes: PhotoViewHeroAttributes(
                                          tag: listImages[index]),
                                      minScale:
                                      PhotoViewComputedScale.contained * 0.8,
                                      maxScale: PhotoViewComputedScale.covered,
                                    );
                                  },
                                  itemCount:listImages.length,
                                  loadingBuilder: (context, event) => Center(
                                    child: SizedBox(
                                      width: 20.0,
                                      height: 20.0,
                                      child: CircularProgressIndicator(
                                        value: event == null
                                            ? 0
                                            : event.cumulativeBytesLoaded /
                                            event.expectedTotalBytes!,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SmoothPageIndicator(
                                    controller: thiredPageController,
                                    count: listImages.length,
                                    effect: SlideEffect(
                                        dotHeight: 10,
                                        dotWidth: 10,
                                        activeDotColor: Colors.white,
                                        dotColor:
                                        Colors.white.withOpacity(0.3)),
                                    onDotClicked: (index) =>
                                        thiredPageController.animateToPage(
                                            index,
                                            duration:
                                            const Duration(milliseconds: 250),
                                            curve: Curves.ease),
                                  ),
                                ),
                                const SizedBox(height: 10,),
                              ],
                            );
                          }));
                    },
                    child:
                    CachedNetworkImage(
                      placeholderFadeInDuration: const Duration(seconds: 1),
                      errorWidget: (context, url, error) => Container(
                        alignment: Alignment.center,
                        color: Colors.grey.shade300,
                        child: const FittedBox(
                          child: Icon(Icons.error),
                        ),
                      ),
                      placeholder: (_, __) => ImagePlaceholder.rectangular(),
                      imageUrl:listImages[index],
                      imageBuilder: (context, imageProvider) => InkWell(
                        onTap:  (){
                          openBottomSheet(context, imageProvider);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover, image: imageProvider),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.only(top: 8),
                child: SmoothPageIndicator(
                  controller: secondPageController,
                  count: listImages.length,
                  effect: SlideEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: Theme.of(context).primaryColorLight,
                      dotColor: Colors.grey.withOpacity(0.3)),
                  onDotClicked: (index) => secondPageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.ease),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

}
