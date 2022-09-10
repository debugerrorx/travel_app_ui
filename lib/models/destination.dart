class Destination {
  final String city;
  final String country;
  final String rating;

  const Destination({
    required this.city,
    required this.country,
    required this.rating,
  });

  String get image => 'assets/images/${city.toLowerCase()}.jpg';
}
