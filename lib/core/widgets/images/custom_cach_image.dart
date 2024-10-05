import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:shimmer/shimmer.dart';
import '../../resources/colors/color.dart';

class CustomCacheImage extends StatelessWidget {
  final String image;
  const CustomCacheImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return  CachedNetworkImage(
      placeholderFadeInDuration: const Duration(seconds: 1),
      errorWidget: (context, url, error) => Container(
          decoration: BoxDecoration(
              color: customGray,
              borderRadius: BorderRadius.circular(8)),
          child: const Icon(Icons.error)),
      placeholder: (_, __) =>
          ImagePlaceholder.rectangular(),
      imageUrl:image,
      imageBuilder: (context, provider) => GestureDetector(
        onTap: () {
          openBottomSheet(context, provider);
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: provider, fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
class ImagePlaceholder extends StatelessWidget {
  double width = double.infinity,
      height = double.infinity,
      radius = double.infinity;
  bool isCircular = false;
  BorderRadius? borderRadius;
  static const Color whiteColor = Color(0xffaaaaaa);
  static const Color secondaryColor = Colors.grey;
  ImagePlaceholder._();
  ImagePlaceholder.rectangular(
      {super.key, this.width = double.infinity,
        this.height = double.infinity,
        this.borderRadius}) {
    isCircular = false;
  }

  ImagePlaceholder.circular({super.key, this.radius = double.infinity}) {
    isCircular = true;
  }
  @override
  Widget build(BuildContext context) {
    if (isCircular) {
      return Shimmer.fromColors(
          baseColor: whiteColor,
          highlightColor: secondaryColor,
          child: CircleAvatar(
            radius: radius,
            backgroundColor: whiteColor,
          ));
    } else if (borderRadius != null) {
      return Shimmer.fromColors(
        baseColor: whiteColor,
        highlightColor: secondaryColor,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: borderRadius,
          ),
        ),
      );
    } else {
      return Shimmer.fromColors(
        baseColor: whiteColor,
        highlightColor: secondaryColor,
        child: SizedBox(
          height: height,
          width: width,
        ),
      );
    }
  }
}
void openBottomSheet(BuildContext context, ImageProvider imageProvider) =>
    showBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      shape: const ContinuousRectangleBorder(),
      builder: (BuildContext context) {
        return PhotoViewGestureDetectorScope(
          axis: Axis.vertical,
          child: Stack(
            children: [
              PhotoView(
                backgroundDecoration: BoxDecoration(
                  color: Colors.grey.withAlpha(240),
                ),
                imageProvider: imageProvider,
                heroAttributes:
                PhotoViewHeroAttributes(tag: imageProvider.toString()),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    child: Icon(
                      Icons.close,
                      color: primaryColor,
                      size: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
