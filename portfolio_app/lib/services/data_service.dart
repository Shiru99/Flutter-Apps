import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/person.dart';
import '../models/social_media.dart';
import '../models/ui_portfolio.dart';

class DataService {
  static Future<Person> loadPersonDetails() async {
    String jsonString = await rootBundle.loadString('data.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    List<Map<String, dynamic>> socialMediaJson =
        List<Map<String, dynamic>>.from(jsonMap['socialMedia']);

    List<SocialMedia> socialMedia = socialMediaJson
        .map((socialMediaJson) => SocialMedia(
              platform: SocialMediaPlatform.values.firstWhere((e) =>
                  e.toString().split('.').last == socialMediaJson['platform']),
              primaryColor: Color(int.parse(socialMediaJson['primaryColor'])),
              link: socialMediaJson['link'],
            ))
        .toList();

    List<Map<String, dynamic>> uiPortfoliosJson =
        List<Map<String, dynamic>>.from(jsonMap['uiPortfolios']);
    List<UIPortfolio> uiPortfolios = uiPortfoliosJson
        .map((uiPortfolioJson) => UIPortfolio(
              title: uiPortfolioJson['title'],
              imageLocation: uiPortfolioJson['imageLocation'],
              link: uiPortfolioJson['link'],
            ))
        .toList();

    return Person(
      name: jsonMap['name'],
      location: jsonMap['location'],
      socialMedia: socialMedia,
      profileImage: jsonMap['profileImage'],
      aboutMe: jsonMap['aboutMe'],
      resume: jsonMap['resume'],
      yearsOfExperience: jsonMap['yearsOfExperience'],
      numberOfProjects: jsonMap['numberOfProjects'],
      numberOfClients: jsonMap['numberOfClients'],
      uiPortfolios: uiPortfolios,
    );
  }
}
