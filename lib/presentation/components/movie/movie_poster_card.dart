import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MoviePosterCard extends StatelessWidget {
  final String imageUrl;
  final bool selected;
  final VoidCallback onTap;

  const MoviePosterCard({super.key, required this.imageUrl, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              cacheKey: imageUrl,
              useOldImageOnUrlChange: false,
            ),
          ),

          /// Selection overlay
          if (selected)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.black.withValues(alpha: 0.35),
              ),
            ),

          /// Check badge
          if (selected)
            Positioned(
              bottom: 16,
              right: 16,
              child: Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFCB2C2C)),
                child: const Icon(Icons.check, size: 18, color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}
