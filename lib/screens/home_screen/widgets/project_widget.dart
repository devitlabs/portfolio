import 'package:flutter/material.dart';

class ProjectWidget extends StatefulWidget {
  const ProjectWidget({super.key});

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Mes Projets",style: TextStyle(fontSize: 30,color: Color(0xFF4E5077),fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("Les choses que j'ai construites jusqu'à présent",style: TextStyle(fontSize: 18)),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProjectItem(),
                SizedBox(width: 20,),
                ProjectItem(),
                SizedBox(width: 20,),
                ProjectItem(),
              ],
            ),
          ],
        ),
    );
  }
}


class ProjectItem extends StatefulWidget {
  const ProjectItem({super.key});

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 5,
      onTap: (){},
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (value){
        setState(() {
          onHover = value;
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: onHover ? 15 : 5,
        child: SizedBox(
          height: 400,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/preview_project.png",height: 180,width: 300,fit: BoxFit.fill,),
              Expanded(child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Project Tile goes here",style: TextStyle(fontSize: 20,color: Color(0xFF4E5077),fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("This is sample project description random things are here in description "
                        "This is sample project lorem ipsum generator for dummy content"
                        "This is sample project lorem ",
                      style: TextStyle(color: Color(0xFF666666),fontSize: 15),
                    ),
                    Expanded(child: Container()),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Tech stack : ",style: TextStyle(color: Color(0xFF4E5077),fontWeight: FontWeight.bold),),
                        Text("HTML , JavaScript, SASS, React",style: TextStyle(color: Color(0xFF4E5077)))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            children: [
                              Image.asset("assets/icons/lien.png",width: 15,height: 15,),
                              SizedBox(width: 5,),
                              Text("Live Preview",style: TextStyle(decoration: TextDecoration.underline,)),
                            ]
                        ),
                        Row(
                            children: [
                              Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHkAAAB5CAMAAAAqJH57AAAAaVBMVEX///8bHyMAAAAXGyATGB0H"
                                  "DhQAAAr8/PwYHSEAAAX09PQMEhjv7+/d3d3l5ubV1dXHyMiCgoNoams9P0LAwMCam5sBCA1aW1yMjY5LTE20tLRTVVepqqtDREUqLTAOEBJ1"
                                  "dnc1ODkiIyQCS5QJAAAGwklEQVRogd1b26KyKhBWBMVjqXnKtFrv/5A/VibCoKK0L/ZcLpd8Dczhm2G0LG1Jztcizdq8t227z9ssLa7nRH8ZTdBL"
                                  "3dxL33dJiKk9CMUhYX8o7019+RW8d6pzG7kfRFEodpGd1yfPOGycdshXoE7oPurS2CR4cGuZsouoozDV21tgCDeqQ7QN9gOOwjoygZsid3mTgW13U"
                                  "XoUO6gR0YR9C0H1oT2/3d1duIOU99tu3LhBuvvMC0VNvAvXK8rwAO4gYVnscLGkOqTwqHalHdgueJ9liULwRQ+4Ro4RYNt2UK0DXCFDuIOgajNu0Oz3"
                                  "JUjcZmNYSbrSKDA77G6TnSW5GduaQecbPPsXwAP0qtZB9wvgYcPXwnhj+oxHKZtl4MqsVfPiLjpXbdKPRVkKKRcRGGNnd/B2sEjbkDKQJlgImbhpcgeV"
                                  "+oHUIYjkTfs3h3awwsC9SjBr8vC8IDmnT01eglGfXeLIs27CHpIKTpqFuNfj7njnrNxu8qHbXcdoKa1YQMBxKR4p4h4+NuqNUXueXqsEbkFLKJY1IgMJ"
                                  "25kRZN/E6YTERZywUmdcGT3P/EtXUekQ8GrxTGzbFxjc6YkYKEPKs5oVcac4iZIkPl9u9aNhv4RgRjivwivSRiGJFgZ3yX1kJyjQ83E7ebKZeF5yTVuUi"
                                  "dkw+BNXpXcxitZy8CInCSFZCr4e4DO95JGlEE8iOXhRlffpSC6XRWi+MalsudQ2UBy1MnEmKf8PgMo2/TNQEopuJSkNnLJNqQGdG6AIdbmTDkIoL5B9tclMZ"
                                  "AtjKoXTZsq+PIivydEBCf6gbDP5tNeChbkYSXaIHEkGwe0YEWKYD4TbGbpKpOj5UXo8x1RBgdDhXouUC97ifhzL6+AuSJgfRk5hnXH3XvkEP3aIAa+q4LyO3oG"
                                  "59uGn55VVt0gAuRUz3rdLA7HVns7ioEik8r3d+fAssaEwQnsTLS0mGeRY1E6UvwpmTDsEdtlX7oditu2YSFRvySDPesVuKKgzwmsK2DpDSuOBj8k0yP6avQnxo"
                                  "DKF3pmBQZtNbYOtYoB1MFKUWGfIm8OHOWA4ePtn6wohu6Yse5AERL5aBbTbRuLXVyBkpht4CsjoZQhEDxgPBN0NmboPeAnkt2FmgXwErS+nIRABxa2Vg+78c2Qn"
                                  "t3oA+D9AtnsLAjZ8zjDBVCAbyxeDwARAgWyA5E8iNn4+yPA5/zySsHPOl6sAAxJAyMy2weMnWjcAKwJyW+bPYAxjEcacgFUbQwDjttP/Oj+zuA3mKpMpAy5hWK"
                                  "4C87NJE4P6Ea/8DHISkwcN15OMk4A8jNX1v2W9Aw+Duae57Qa50It7WnANixtD1g0WEm++DT9aaMBrSST1H1/yqjHguupbXR8UVYk86AXXkoZquhMBF3/Xkor0aV"
                                  "MTqbKDGyW4ez1VbIiN+8PAD8XSn56Bok8y3OgdBJZuRkb5FIyq3hCzwPaQlSmBv9ar6ocN0Acyh6IlZXM9V+V2sw3v9/KiZGFi4Gu73rz8oLwjYPTYE8G9m62+ZZr"
                                  "6njPWUBIHlz5HzlysP45yzZeGUbicwPW3/SKOklOBuTcp8lMd146KfnGqy8FcHTHF7rHLWvAvU4L6YtuBx8MQ2/IVKt/T53gDGSlB3M/Cj1Mi1BSXk/rQg/hSVGjD"
                                  "7Ny8gJlYmjtO+kS9uAZ2EbH/4I0PGhr6PngrIUg5b2tyZIk4HwOIAc5Axfu/aZvhGmZNZab01A52xiwF5M/yodxt+DJEElcsImb3kqNiUreUUnVMUwfh2QrSveT8J"
                                  "3/odiB6JVmipJuUhvgdf+eAP9fEJwF6scZMVgZRB4Hun+d37uNPu8xigmMvJpBqdbvhO/dZUqN/Hws89ZPatFwmpGABNd8zmGHNZiu+YydR3aMSYxyWKKyW49jqQatmK2bzJM50mxBdHm3TtOnqlLSCxU5rqm+0+VeVIUMtC3n+veQChefmhvBTOzeuIC+PInKzUnozi+vIy7NSs/kw7aJuEXmVyHIzcVS3ylhCJvkqqeLnAFGlVWYsMcn1OcA5NHGzyzRDEiyOkywhk+cmFWbzniEqmyyt6zp9ZM3KyauLlS0av3Sbz7gOX1y4LglDvOLjKmS3206cFSx9H7LGXK+lmmXeg6w5y6yY3145Z+gGkhDtrgc0s66PjPaUhF5BxIJfF3nfnL71+jbBOYDsoG5/v0P4HkMLuSwPtXi8GnFhZSWQ88gEpUfvf4J0qtC2ItMSPUy0qaPa+TDQbdETIzc11R4PrsP3VU640m8P+qHqZyWnydsuL667Z7NWQsfts3v84IO2LRYTGYf9X8k/hi1ZuuLnKioAAAAASUVORK5CYII=",width: 15,height: 15,),
                              SizedBox(width: 5,),
                              Text("View Code",style: TextStyle(decoration: TextDecoration.underline,),),
                            ]
                        ),
                      ],
                    ),
                  ],
                ),
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}

