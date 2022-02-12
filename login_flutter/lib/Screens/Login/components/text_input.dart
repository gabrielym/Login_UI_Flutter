import 'package:flutter/material.dart';

class FieldContainer extends StatelessWidget {
  final Widget? child;
  const FieldContainer({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 1),
      decoration: BoxDecoration(
        color: Colors.teal[300],
        borderRadius: BorderRadius.circular(26),
      ),
      child: child,
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String>? onChanged;

  const RoundedInputField({
    Key? key,
    this.hintText = '',
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(icon),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class RoundedInputFieldSenha extends StatelessWidget {
  // final ValueChanged<String>? onChanged;
  const RoundedInputFieldSenha({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FieldContainer(
      child: TextField(
        obscureText: true,
        //onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(Icons.lock),
          //suffixIcon: Icon(Icons.visibility),
          hintText: 'Senha',
          border: InputBorder.none,
        ),
      ),
    );
  }
}

// class RoundedButton extends StatelessWidget {
//   final String text;

//   const RoundedButton({
//     Key? key,
//     this.text = '',
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       width: size.width * 0.8,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(27),
//         child: FlatButton(
//           padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
//           color: Colors.black,
//           onPressed: (){},
//           child: Text(
//             text,
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }
