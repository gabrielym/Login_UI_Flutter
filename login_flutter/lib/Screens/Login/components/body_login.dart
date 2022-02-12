import 'package:flutter/material.dart';
import 'package:vetpet/Screens/Login/components/text_input.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.white30.withOpacity(0.92), BlendMode.screen),
                image: AssetImage(
                  'assets/images/patas.png',
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.5),
              RoundedInputField(
                hintText: "Email",
                onChanged: (value) {},
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputFieldSenha(),
              SizedBox(height: size.height * 0.02),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(27),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    color: Colors.teal[800],
                    onPressed: () {},
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Não tem uma conta?"),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Registre-se",
                      style: TextStyle(color: Color(0xFF00695C)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              BarraOU(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(iconSrc: "assets/icons/google.svg", press: () {}),
                  SocialIcon(iconSrc: "assets/icons/facebook.svg", press: () {}),
                ],
              ),
            ],
          ),
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              padding: EdgeInsets.only(left: 40, top: 50, right: 20),
              height: 360,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/vetpetlogo.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BarraOU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.6,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Text("OU", style: TextStyle(color: Color(0xFF00695C))),
          buildDivider()
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Color(0xFF00695C),
        height: 1.5,
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final VoidCallback? press;

  const SocialIcon({
    Key? key,
    this.iconSrc = '',
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(20),
        /* decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.grey.shade400),
        shape: BoxShape.circle,
      ),*/
        child: SvgPicture.asset(iconSrc, width: size.width * 0.1),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
