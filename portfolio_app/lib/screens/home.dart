import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// widgets
import 'widgets/info_tile.dart';
import 'widgets/loading.dart';
import 'widgets/social_icon.dart';
import 'widgets/portfolio_widget.dart';
import 'widgets/title_widget.dart';
import 'widgets/user_profile_title_value_widget.dart';

// models
import '../models/person.dart';
import '../models/social_media.dart';
import '../models/ui_portfolio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Person _person;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadPerson().then((person) {
      setState(() {
        _person = person;
        _isLoading = false;
      });
    });
  }

  Future<Person> _loadPerson() async {
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

  String _getSocialMediaImagePath(SocialMediaPlatform platform) {
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

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? LoadingWidget()
        : Scaffold(
            backgroundColor: Color.fromARGB(255, 15, 15, 15),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  flex: 57,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: Color.fromARGB(255, 29, 27, 30),
                                      ),
                                      child: Stack(children: [
                                        LayoutBuilder(
                                          builder: (BuildContext context,
                                              BoxConstraints constraints) {
                                            double fontSize =
                                                constraints.maxWidth * 0.1;
                                            double buttonFontSize =
                                                constraints.maxWidth * 0.03;

                                            double iconSize =
                                                constraints.maxWidth * 0.04;

                                            // double buttonPadding =
                                            //     constraints.maxWidth * 0.01;

                                            return Stack(
                                              children: [
                                                Center(
                                                  child: FittedBox(
                                                    fit: BoxFit.fill,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
                                                      child: Text(
                                                        'Bringing Your Ideas\nTo Life Through\nUI Design',
                                                        style: TextStyle(
                                                          letterSpacing: 1.2,
                                                          wordSpacing: 1.2,
                                                          fontSize: fontSize,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  bottom: 10,
                                                  right: 20,
                                                  child: Directionality(
                                                    textDirection:
                                                        TextDirection.rtl,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color: Color.fromARGB(
                                                            255, 131, 38, 252),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 5.0),
                                                        child: Center(
                                                          child: ElevatedButton
                                                              .icon(
                                                            onPressed: () {},
                                                            icon: Image.asset(
                                                                'images/hand.png',
                                                                height:
                                                                    iconSize,
                                                                width:
                                                                    iconSize),
                                                            label: Text(
                                                              'Hire Me',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'FiraSans',
                                                                  fontSize:
                                                                      buttonFontSize,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          10,
                                                                      horizontal:
                                                                          20),
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              elevation: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 43,
                                  child: Row(
                                    children: [
                                      InfoTile(
                                        number: _person.yearsOfExperience,
                                        label: 'Years Experience',
                                        backgroundColor:
                                            Color.fromARGB(255, 0, 200, 150),
                                        textColor: Colors.white,
                                      ),
                                      InfoTile(
                                        number: _person.numberOfProjects,
                                        label: 'Handled Project',
                                        backgroundColor:
                                            Color.fromARGB(255, 255, 190, 60),
                                        textColor: Colors.black,
                                      ),
                                      InfoTile(
                                        number: _person.numberOfClients,
                                        label: 'Clients',
                                        backgroundColor:
                                            Color.fromARGB(255, 255, 110, 125),
                                        textColor: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  flex: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: Color.fromARGB(255, 29, 27, 30),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Bim',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white38,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'Graph',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Icon(Icons.menu,
                                                color: Colors.white60,
                                                size: 15),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 50,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        flex: 50,
                                        child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                color: Color.fromARGB(
                                                    255, 131, 38, 252),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      _person.profileImage),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Expanded(
                                        flex: 50,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Expanded(
                                              flex: 20,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                    color: Color.fromARGB(
                                                        255, 29, 27, 30),
                                                  ),
                                                  child:
                                                      UserProfileTitleValueWidget(
                                                          title: "Name",
                                                          value: _person.name),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 60,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                    color: Color.fromARGB(
                                                        255, 29, 27, 30),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        flex: 25,
                                                        child:
                                                            UserProfileTitleValueWidget(
                                                                title:
                                                                    "Based in",
                                                                value: _person
                                                                    .location),
                                                      ),
                                                      Expanded(
                                                        flex: 75,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15.0),
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    "images/background.png"),
                                                                fit: BoxFit
                                                                    .cover),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 20,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                    color: Color.fromARGB(
                                                        255, 29, 27, 30),
                                                  ),
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    child:
                                                        SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: _person
                                                            .socialMedia
                                                            .map((socialMedia) {
                                                          String imagePath =
                                                              _getSocialMediaImagePath(
                                                                  socialMedia
                                                                      .platform);
                                                          return SocialIcon(
                                                            imagePath:
                                                                imagePath,
                                                            color: socialMedia
                                                                .primaryColor,
                                                            link: socialMedia
                                                                .link,
                                                          );
                                                        }).toList(),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 58,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Color.fromARGB(255, 29, 27, 30),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 25,
                                      child: TitleWidget(
                                          title: "UI Portfolio",
                                          subTitle: "See All"),
                                    ),
                                    Expanded(
                                      flex: 75,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 16.0,
                                            left: 16.0,
                                            right: 16.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: _person.uiPortfolios
                                                .map((portfolio) {
                                              return PortfolioWidget(
                                                  imageAsset:
                                                      portfolio.imageLocation);
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 42,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Color.fromARGB(255, 29, 27, 30),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 25,
                                      child: TitleWidget(
                                          title: "About", subTitle: "Resume"),
                                    ),
                                    Expanded(
                                      flex: 75,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 21.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: Scrollbar(
                                            thumbVisibility: false,
                                            child: SingleChildScrollView(
                                              child: Container(
                                                child: Text(
                                                  _person.aboutMe,
                                                  style: TextStyle(
                                                      wordSpacing: 0,
                                                      letterSpacing: 0,
                                                      height: 1.9,
                                                      fontSize: 10.5,
                                                      fontFamily: "Poppins",
                                                      color: Colors.white54),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
