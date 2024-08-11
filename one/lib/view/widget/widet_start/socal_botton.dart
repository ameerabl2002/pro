
import 'package:flutter/material.dart';
class BuildSignInWithText extends StatelessWidget {
  const BuildSignInWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign in with',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ],
    );
  }
}
Widget buildSocialBtnRow() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildSocialBtn(
          () => print('Login with Facebook'),
          AssetImage(
            'assets/logos/facebook.jpg',
          ),
        ),
        buildSocialBtn(
          () => print('Login with Google'),
          AssetImage(
            'assets/logos/google.jpg',
          ),
        ),
      ],
    ),
  );
}



Widget buildSocialBtn(Function onTap, AssetImage logo) {
  return GestureDetector(
    onTap: onTap(),
    child: Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
        image: DecorationImage(
          image: logo,
        ),
      ),
    ),
  );
}
