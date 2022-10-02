import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginNewUi extends StatefulWidget {
  const LoginNewUi({super.key});

  @override
  State<LoginNewUi> createState() => _LoginNewUiState();
}

class _LoginNewUiState extends State<LoginNewUi> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF0f3557),
                Color(0xFF7c78b8),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              const secondBackground(),
              const thirdBackground(),
              const firstbackground(),
              const whitebox(),
              emailPassword(),
              loginButton(),
              Positioned(
                bottom: 80,
                right: 100,
                child: Column(
                  children: const <Widget>[
                    Text(
                      'Conitinue With',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FaIcon(FontAwesomeIcons.facebook),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginButton() {
    return Positioned(
      top: 400,
      left: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 6,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'LOG IN NOW',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text('OR'),
          const SizedBox(height: 10),
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'CREATE A ACCOUNT',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget emailPassword() {
    return Positioned(
      top: 200,
      left: 20,
      child: SizedBox(
        height: 150,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: _email,
              decoration: InputDecoration(
                  prefixIcon: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.grey)),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                  ),
                  labelText: "Email",
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            TextField(
              controller: _password,
              decoration: InputDecoration(
                  prefixIcon: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.grey)),
                    ),
                    child: const Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                  ),
                  labelText: "Password",
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ],
        ),
      ),
    );
  }
}

class thirdBackground extends StatelessWidget {
  const thirdBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -300,
      right: -130,
      child: Transform.rotate(
        angle: -pi / 4,
        child: Container(
          height: 500,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xff0f3557),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 16,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class secondBackground extends StatelessWidget {
  const secondBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 230,
      right: -200,
      child: Transform.rotate(
        angle: -pi / 4,
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width * 1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xff0f3557),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 16,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class firstbackground extends StatelessWidget {
  const firstbackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -120,
      right: 80,
      child: Transform.rotate(
        angle: -pi / 4,
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xff0f3557),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 16,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class whitebox extends StatelessWidget {
  const whitebox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -30,
      left: -305,
      child: Transform.rotate(
        angle: -pi / 4,
        child: Container(
          height: 600,
          width: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(100),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 6,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Backgroundclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height);
    // path.quadraticBezierTo(
    //     size.width-50, size.height, size.width , size.height - 150);
    var controlpoint = new Offset(size.width, 0);
    path.lineTo(size.width - 20, size.height - 250);
    var endpoint = new Offset(size.width - 20, size.height - 250);
    path.quadraticBezierTo(
        controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);
    path.lineTo(size.width - 200, 0);
    path.close();
    // final path = Path()
    //   ..lineTo(0.0, size.height)
    //   ..lineTo(size.width, size.height)
    //   ..lineTo(size.width, 0.0)
    //   // ..quadraticBezierTo(size.width, 0.0, size.width - 20.0, 0.0)
    //   ..lineTo(40.0, 70.0)
    //   ..quadraticBezierTo(10.0, 85.0, 0.0, 120.0)
    //   ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
