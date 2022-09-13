import 'package:flutter/material.dart';
import 'package:sport/LoginSingUp/view/SignUp.dart';
import 'package:sport/LoginSingUp/view/loginP.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List pages = ["", Register(), SignUp()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: index == 0
            ? Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(34, 146, 195, 241)
                    ])),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 1),
                                color: Color(0xc8b6ff),
                                blurRadius: 1.0)
                          ],
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://static.vecteezy.com/system/resources/previews/002/619/944/non_2x/woman-doing-exercises-with-weight-bar-outdoor-sport-recreation-exercise-vector.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Discover your Rival",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            child: Center(
                                child: Text(
                              "İstanbul seni hapsetmiş eski bir bandı kaydetmiş yüzlerce binlerce insan aman ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black45),
                            )),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                index = 1;
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: Colors.grey.shade400),
                              ),
                              child: Center(
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                index = 2;
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300.withOpacity(0.4),
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            : pages[index]);
  }
}
