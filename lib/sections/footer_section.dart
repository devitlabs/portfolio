import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_icon_button.dart';
import '../widgets/custom_text_button.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  double iconWidth = 15;
  double navWidth = 30;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: const BoxDecoration(
        color: Color(0xFF343D68),
        border: Border(top: BorderSide(color: Color(0xFFFAFAFA)))
      ),
      child: Column(
        children: [
          ClipPath(
            clipper: BezierClipper(),
            child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFFAFAFA),
                    border: Border(top: BorderSide(color: Color(0xFFFAFAFA)))
                ),
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/signature.png",width: 200,),
                    Expanded(child: Container()),
                    Text("+225 0757360442",style: TextStyle(color: Colors.white),),
                    SizedBox(width: 40,),
                    Text("huehanou.houessou@gmail.com",style: TextStyle(color: Colors.white),),
                    SizedBox(width: 40,),
                    CustomIconButton(iconsPath: 'assets/icons/signe-github.png',size: 15,onTap: (){},),
                    SizedBox(width: iconWidth,),
                    CustomIconButton(iconsPath: 'assets/icons/whatsapp.png',size: 15,onTap: (){}),
                    SizedBox(width: iconWidth,),
                    CustomIconButton(iconsPath: 'assets/icons/linkedin.png',size: 15,onTap: (){}),
                  ],
                ),
                SizedBox(height: 5,),
                Container(height: 2,width: double.infinity,color: Colors.white,),
                SizedBox(height: 5,),
                Row(
                  children: [
                    CustomTextButton(text: "Accueil",hoverColor: Colors.white,onTap: (){
                      context.go("/accueil");
                    },),
                    SizedBox(width: navWidth),
                    CustomTextButton(text: "Skills",hoverColor: Colors.white,onTap: (){},),
                    SizedBox(width: navWidth),
                    CustomTextButton(text: "Projets",hoverColor: Colors.white,onTap: (){},),
                    SizedBox(width: navWidth),
                    CustomTextButton(text: "Contactez-moi",hoverColor: Colors.white,onTap: (){},),
                    SizedBox(width: navWidth),
                    CustomTextButton(text: "Apropos de moi",hoverColor: Colors.white,onTap: (){},),
                    Expanded(child: Container()),
                    Text("Développé avec ",style: TextStyle(color: Colors.white),),
                    const FlutterLogo()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BezierClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.75);

    path.quadraticBezierTo(
        size.width * 0.25,
        size.height * 0.5,
        size.width * 0.5,
        size.height * 0.75
    );
    //
    path.quadraticBezierTo(
        size.width * 0.75,
        size.height * 1,
        size.width,
        size.height * 0.75
    );
    path.lineTo(size.width,0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
