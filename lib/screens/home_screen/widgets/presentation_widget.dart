import 'package:flutter/material.dart';

class PresentationWidget extends StatefulWidget {
  const PresentationWidget({super.key});

  @override
  State<PresentationWidget> createState() => _PresentationWidgetState();
}

class _PresentationWidgetState extends State<PresentationWidget> {

  bool survol = false;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.all(50),
      color: Color(0xFFE8EBF7),height: height-50,width: double.infinity,
      child: Row(
        children: [
          Expanded(child: Container(
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi👋,",style: TextStyle(fontSize: 20),),
                Text("I’m a software developer",style: TextStyle(color: Color(0xFF343D68),fontSize: 30,fontWeight: FontWeight.bold,),),
                SizedBox(height: 20,),
                Text("I’m John Doe, a developer dedicated to making the world a better place one line of code at a time."),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Contactez-moi",style: TextStyle(fontSize: 15,color: Colors.white),),
                    ))
              ],
            ),
          )),
          Expanded(child: Container(
            alignment: Alignment.centerRight,
            child: Image.asset("assets/images/photo.png",width: 411,),
          )),
        ],
      ),
    );
  }
}
