import 'package:chat/widgets/boton_azul.dart';
import 'package:flutter/material.dart';

// Mis Widgets
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/logo.dart';
import '../widgets/labels_login.dart';

// Pagina de inicio de sesión
class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff2f2f2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
              child: Container(
                height: MediaQuery.of(context).size.height*0.9,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Logo(),
                  _Form(),
                  Labels(),
                  Text(
                    "Terminos y condiciones de uso",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                  )
                ],
            ),
              ),
          ),
        ));
  }
}

// Formulario de ingreso
class _Form extends StatefulWidget {
  _Form({Key key}) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final mailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: "Correo",
            keyboardType: TextInputType.emailAddress,
            textController: mailController,
          ),
          
          CustomInput(
            icon: Icons.lock,
            placeholder: "Contraseña",
            keyboardType: TextInputType.visiblePassword,
            textController: passwordController,
            isPassword: true,
          ),
          
          BotonAzul(
            text: "Ingrese",
            onPressed: () {
              print(mailController.text);
              print(passwordController.text);
            },
          ),
        ],
      ),
    );
  }
}
