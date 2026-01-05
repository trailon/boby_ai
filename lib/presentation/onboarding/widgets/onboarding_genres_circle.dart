part of '../genres/onboarding_genres_screen.dart';

class _GenreCircle extends StatelessWidget {
  final Genre genre;
  final bool selected;
  final VoidCallback onTap;

  const _GenreCircle({required this.genre, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: selected ? AppColors.primaryRed : Colors.transparent.withValues(alpha: 0),
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              genre.name,
              textAlign: TextAlign.center,
              style: context.textTheme.titleMedium?.copyWith(color: AppColors.background),
            ),
          ),

          if (selected) Positioned(bottom: 12.h, right: 12.w, child: _CheckBadge()),
        ],
      ),
    );
  }
}

class _CheckBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.w,
      height: 32.h,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.primaryRed),
      child: Icon(Icons.check, size: 20.sp, color: AppColors.white),
    );
  }
}
