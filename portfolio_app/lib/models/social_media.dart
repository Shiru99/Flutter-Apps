import 'dart:ui';

enum SocialMediaPlatform {
  LinkedIn,
  Dribbble,
  Twitter,
  Instagram,
}

class SocialMedia {
  final SocialMediaPlatform platform;
  final Color primaryColor;
  final String link;

  SocialMedia({
    required this.platform,
    required this.primaryColor,
    required this.link,
  });

  @override
  String toString() {
    return 'SocialMedia{ platform: $platform, primaryColor: $primaryColor, link: $link }';
  }
}

