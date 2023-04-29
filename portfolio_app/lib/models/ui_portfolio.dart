class UIPortfolio {
  final String title;
  final String imageLocation;
  final String link;

  UIPortfolio({
    required this.title,
    required this.imageLocation,
    required this.link
  });

  @override
  String toString() {
    return 'UIPortfolio{ title: $title, imageLocation: $imageLocation, link: $link }';
  }
}