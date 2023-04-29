import 'social_media.dart';
import 'ui_portfolio.dart';

class Person {
  final String name;
  final String location;
  final List<SocialMedia> socialMedia;
  final String profileImage;
  final String aboutMe;
  final String resume;
  final int yearsOfExperience;
  final int numberOfProjects;
  final int numberOfClients;
  final List<UIPortfolio> uiPortfolios;

  Person({
    required this.name,
    required this.location,
    required this.socialMedia,
    required this.profileImage,
    required this.aboutMe,
    required this.resume,
    required this.yearsOfExperience,
    required this.numberOfProjects,
    required this.numberOfClients,
    required this.uiPortfolios,
  });

  @override
  String toString() {
    return 'Person{name: $name, location: $location, socialMedia: $socialMedia, profileImage: $profileImage, aboutMe: $aboutMe, resume: $resume, yearsOfExperience: $yearsOfExperience, numberOfProjects: $numberOfProjects, numberOfClients: $numberOfClients, uiPortfolios: $uiPortfolios}';
  }
}

