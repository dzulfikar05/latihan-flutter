import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Custom App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff8c062f),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xfffe5788), Color(0xfff56d5d)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://hips.hearstapps.com/hmg-prod/images/10best-trucks-suvs-2023-honda-crv-113-1673298616.jpg?crop=0.550xw:0.413xh;0.230xw,0.377xh&resize=1200:*"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4)
                          ),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://imgsrv2.voi.id/5hJJl5mVsXYF_fXbMxW7pSEnqurlTigicDCzqMdQ_pc/auto/1280/853/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy8yODY1MTMvMjAyMzA2MTMxMTQ0LW1haW4uY3JvcHBlZF8xNjg2NjMxNTAzLmpwZWc.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 50 + MediaQuery.of(context).size.height * 0.35 , 20, 50),
                      child: Column(
                        children: <Widget>[
                          Text("Beautiful Car Model Name Here ", style: TextStyle(color: Colors.black26, fontSize: 24) ,)
                        ]
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
