import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen/widgets/tech_stack_widget.dart';

import '../../sections/app_bar_page.dart';
import '../../sections/footer_section.dart';
import 'widgets/contact_me.dart';
import 'widgets/presentation_widget.dart';
import 'widgets/project_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width,50),
        child: const AppBarPage(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             PresentationWidget(),
            TechStackWidget(),
            ProjectWidget(),
            ContactMe(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
