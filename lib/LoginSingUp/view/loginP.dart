import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(108, 231, 183, 183),
              Color.fromARGB(34, 146, 195, 241)
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Hello Again!",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 180,
                height: 40,
                child: Text(
                  "Wellcome Back you've been missed!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter username",
                    hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Recovery password",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 30,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                  color: Color.fromARGB(207, 248, 86, 54),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10, left: 20),
                  width: 100,
                  height: 1,
                  decoration: BoxDecoration(
                      gradient: SweepGradient(colors: [
                    Colors.black54,
                    Colors.black45,
                    Colors.black38,
                    Colors.black26,
                    Colors.black12,
                    Colors.white,
                  ])),
                ),
                Text(
                  "Or continue with",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 20,
                  ),
                  width: 120,
                  height: 1,
                  decoration: BoxDecoration(
                      gradient: SweepGradient(colors: [
                Colors.black54,
                    Colors.black45,
                    Colors.black38,
                    Colors.black26,
                    Colors.black12,
                    Colors.white,
                  ])),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 55,
                  width: 80,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/2991/2991148.png"),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 90,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                          "https://seeklogo.com/images/A/apple-logo-E3DBF3AE34-seeklogo.com.png"),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  width: 80,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Center(
                    child: Image(
                      image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/2048px-2021_Facebook_icon.svg.png"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register now",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
