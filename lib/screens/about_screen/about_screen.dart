import 'package:flutter/material.dart';

import '../../sections/app_bar_page.dart';
import '../../sections/footer_section.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            AboutMeBloc(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}


class AboutMeBloc extends StatefulWidget {
  const AboutMeBloc({super.key});

  @override
  State<AboutMeBloc> createState() => _AboutMeBlocState();
}

class _AboutMeBlocState extends State<AboutMeBloc> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About Me",style: TextStyle(fontSize: 30,color: Color(0xFF4E5077),fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Container(
            width: 800,
            child: Text("The Generator App is an online tool that helps you to export ready-made templates ready to "
                "work as your future website. It helps you to combine slides, panels and other components and "
                "export it as a set of static files: HTML/CSS/JS.",style: TextStyle(fontSize: 18),),
          ),
          SizedBox(height: 40,),
          Text("Work Experience",style: TextStyle(fontSize: 30,color: Color(0xFF4E5077),fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          ExperienceWidget(),
          SizedBox(height: 20,),
          ExperienceWidget(),
          SizedBox(height: 20,),
          ExperienceWidget(),
          SizedBox(height: 40,),
          Text("Education",style: TextStyle(fontSize: 30,color: Color(0xFF4E5077),fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          ExperienceWidget(),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}



class ExperienceWidget extends StatefulWidget {
  const ExperienceWidget({super.key});

  @override
  State<ExperienceWidget> createState() => _ExperienceWidgetState();
}

class _ExperienceWidgetState extends State<ExperienceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 70,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Bachelor in Electronics & Communication",style: TextStyle(fontSize: 20,color: Colors.grey)),
              Container(
                height: 25,width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFD7FFE0)
                ),
                child: Center(child: Text("Full Time")),
              )
            ],
          ),
          SizedBox(height: 5,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.home_work_outlined),
                  SizedBox(width: 10,),
                  Text("Bangalore Instutute of Technology",style: TextStyle(color: Colors.grey),)
                ],
              ),
              Row(
                children: [
                  Icon(Icons.date_range_outlined),
                  SizedBox(width: 10,),
                  Text("Aug 2015 - Dec 2020",style: TextStyle(color: Colors.grey))
                ],
              )
            ],
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
