import 'package:flutter/material.dart';

// widgets
import 'widgets/aboutme_widget.dart';
import 'widgets/bim_graph_widget.dart';
import 'widgets/experience_widget.dart';
import 'loading.dart';
import 'widgets/location_widget.dart';
import 'widgets/name_widget.dart';
import 'widgets/profile_widget.dart';
import 'widgets/portfolio_widget.dart';
import 'widgets/social_media_widget.dart';
import 'widgets/tagline_widget.dart';

// models
import '../models/person.dart';

// services
import 'package:portfolio_app/services/data_service.dart';

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
    DataService.loadPersonDetails().then((person) {
      setState(() {
        _person = person;
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const LoadingWidget();
    } else {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 15, 15, 15),
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
                            const Expanded(
                              flex: 57,
                              child: TagLineWidget(),
                            ),
                            Expanded(
                              flex: 43,
                              child: ExperienceWidget(person: _person),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Expanded(flex: 10, child: BimGraphWidget()),
                            Expanded(
                              flex: 50,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                      flex: 50,
                                      child: ProfileWidget(person: _person)),
                                  Expanded(
                                    flex: 50,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(
                                            flex: 20,
                                            child: NameWidget(person: _person)),
                                        Expanded(
                                            flex: 60,
                                            child: LocationWidget(
                                                person: _person)),
                                        Expanded(
                                            flex: 20,
                                            child: SocialMediaWidget(
                                                person: _person)),
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
                        child: PortfolioWidget(person: _person),
                      ),
                      Expanded(
                        flex: 42,
                        child: AboutMeWidget(person: _person),
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
}
