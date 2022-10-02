import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
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
                Color(0xFF07c78b8),
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
              Positioned(
                child: ClipPath(
                  clipper: Backgroundclipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.only(
                      //   bottomRight: Radius.circular(150),
                      // ),
                    ),
                  ),
                ),
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
    path.lineTo(size.width - 20, size.height - 250);
    var controlpoint = new Offset(size.width, 0);
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
