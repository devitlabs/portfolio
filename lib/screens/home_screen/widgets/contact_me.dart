import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(50),
        width: double.infinity,
        child: Column(
          children: [
            Text("CONTACTEZ-MOI",style: TextStyle(color: Colors.red,fontSize: 30,decoration: TextDecoration.underline),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText("huehanou.houessou@gmail.com",style: TextStyle(fontSize: 20,),),
                SizedBox(width: 10,),
                IconButton(splashRadius: 20,onPressed: () async{
                  await Clipboard.setData(ClipboardData(text: "huehanou.houessou@gmail.com"));
                }, icon: Icon(Icons.copy))
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Image.asset("assets/images/contact_image.png",width: 400,)),
                  Expanded(child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 2,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(gapPadding: 2),
                                labelText: "Email",
                                hintText: "Enter email address"
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Card(
                          elevation: 2,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(gapPadding: 2),
                                labelText: "Objet",
                                hintText: "Entrez votre objet"
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Card(
                          elevation: 2,
                          child: Container(
                            height: 200,width: double.infinity,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              maxLines: 9,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(gapPadding: 2),
                                  labelText: "Message",
                                  //label: Container(height: 50,width: 50,color: Colors.orange,),
                                  hintText: "Enter message..."
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF4E5077)),
                onPressed: (){}, child: Container(
              width: 400,
              height: 50,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Send Message",style: TextStyle(fontSize: 18),),
                  SizedBox(width: 20,),
                  Icon(Icons.telegram)
                ],
              ),
            ))
          ],
        ),
    );
  }
}
