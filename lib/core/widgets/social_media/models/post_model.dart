import 'package:bud/core/widgets/social_media/models/provider_model.dart';

class PostModel {
  final int? id;
  final String? title;
  final String? description;
  final List<String>? images;
  final ProviderModel? provider;
  final String? createdAt;
  final String? updatedAt;
   int? likes;
   bool? isLikedBy;
  final int? commentCount;


  PostModel(
      {this.id,
      this.title,
      this.description,
      this.images,
      this.provider,
      this.createdAt,
      this.updatedAt,
      this.likes=0,
      this.isLikedBy,
      this.commentCount,
});
  }
