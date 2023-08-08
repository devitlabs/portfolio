import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/widgets/custom_text.dart';

import '../widgets/custom_icon_button.dart';
import '../widgets/custom_text_button.dart';

class AppBarPage extends StatefulWidget {
  const AppBarPage({super.key});

  @override
  State<AppBarPage> createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  double navWidth = 30;
  double iconWidth = 15;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      child: Container(
        height: 50,
        color: Colors.transparent,
        child: Row(
          children: [
            SizedBox(width: 50,),
            CustomText(text: "Fabrice HOUESSOU", isBold: true, size: 20, color: Color(0xFF343D68)),
            Expanded(child: Container()),
            CustomTextButton(text: "Accueil",hoverColor: Color(0xFF343D68),onTap: (){
              context.go("/accueil");
            },),
            SizedBox(width: navWidth),
            CustomTextButton(text: "Skills",hoverColor: Color(0xFF343D68),onTap: (){},),
            SizedBox(width: navWidth),
            CustomTextButton(text: "Projets",hoverColor: Color(0xFF343D68),onTap: (){},),
            SizedBox(width: navWidth),
            CustomTextButton(text: "Contactez-moi",hoverColor: Color(0xFF343D68),onTap: (){},),
            SizedBox(width: navWidth),
            CustomTextButton(text: "Apropos de moi",hoverColor: Color(0xFF343D68),onTap: (){
              context.go("/apropos-de-moi");
            },),
            SizedBox(width: navWidth),
            CustomIconButton(iconsPath: 'assets/icons/signe-github.png',size: 15,onTap: (){},),
            SizedBox(width: iconWidth,),
            CustomIconButton(iconsPath: 'assets/icons/whatsapp.png',size: 15,onTap: (){}),
            SizedBox(width: iconWidth,),
            CustomIconButton(iconsPath: 'assets/icons/linkedin.png',size: 15,onTap: (){}),
            SizedBox(width: 50,),
          ],
        ),
      ),
    );
  }
}
