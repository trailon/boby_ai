class MovieDetail {
  final int id;
  final String title;
  final String posterPath;
  final List<int> genreIds;
  final double rating;

  const MovieDetail({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.genreIds,
    required this.rating,
  });
}
