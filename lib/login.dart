import 'package:flutter/material.dart';
import 'package:foodbank/homepage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.045,
          ),
          Center(
            child: Container(
              width: 85,
              height: 85,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffEFF6FF),
              ),
              child:
                  Image.asset('images/icon.png', alignment: Alignment.center),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: height * 0.015, bottom: height * 0.015),
            child: Text(
              'Food Bank',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: height * 0.03,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Special & Delicious food',
            style: TextStyle(
                color: const Color(0xff434455),
                letterSpacing: 2,
                fontSize: height * 0.02),
          ),
          SizedBox(
            height: height * 0.150,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage())
              );
            },
            child: Container(
              width: width * 0.46,
              height: height * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffE05DA7),
              ),
              child: const Center(
                  child: Text(
                'Log In',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            width: width * 0.46,
            height: height * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffF1F1F3),
            ),
            child: const Center(
                child: Text(
              'Sign Up',
              style: TextStyle(color: Colors.black),
            )),
          ),
          SizedBox(
            height: height * 0.13,
          ),
          Container(
            height: 200,
            width: 340,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/Rectangle.png'), fit: BoxFit.fill),
            ),
          ),
        ],
      ),
    );
  }
}
