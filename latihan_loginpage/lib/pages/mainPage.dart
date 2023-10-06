import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    // bool isHovered = false;
    // MouseRegion(
    //   onEnter: (_) {
    //     setState(() {
    //       isHovered = true;
    //     });
    //   },
    //   onExit: (_) {
    //     setState(() {
    //       isHovered = false;
    //     });
    //   },
    // );
    return Scaffold(
      
      backgroundColor: Color(0xffeeeeee),
      body: Stack(
        children: <Widget>[
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.lightGreenAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                  child: Text(
                "Login",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.lightGreenAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
          ),
          Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 224, 249, 220),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(22)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 35),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            // icon: Icon(Icons.email, color: Colors.lightGreenAccent,),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            // prefixText: "Email : ",
                            hintText: "Enter your Email",
                            labelText: "Email ",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                            // icon: Icon(Icons.email, color: Colors.lightGreenAccent,),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            // prefixText: "Email : ",
                            hintText: "Enter your Password",
                            labelText: "Password ",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.69,
                                height: 40,
                                child: Container(
                                  child: Material(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(10),
                                      splashColor: Colors.yellowAccent,
                                      onTap: () {},
                                      child: Center(
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.blue,
                                          Colors.lightGreenAccent
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      )),
                                ),
                              ),
                            ]),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              "Dont have an account? Register",
                              style: TextStyle(color: Colors.grey, fontSize: 11, ) ,
                              // style: TextStyle(color: isHovered ? Colors.blue : Colors.black, fontSize: 11, ) ,
                            ),
                            
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
