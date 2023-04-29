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

  static String getSocialMediaImagePath(SocialMediaPlatform platform) {
    switch (platform) {
      case SocialMediaPlatform.LinkedIn:
        return 'images/linkedin.png';
      case SocialMediaPlatform.Dribbble:
        return 'images/dribble.png';
      case SocialMediaPlatform.Twitter:
        return 'images/twitter.png';
      case SocialMediaPlatform.Instagram:
        return 'images/instagram.png';
      default:
        return '';
    }
  }
}

