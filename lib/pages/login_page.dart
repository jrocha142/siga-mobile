import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siga_alunos/pages/home.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';
import 'package:siga_alunos/util/components/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _login() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _mailController.text.trim(), 
        password: _passwordController.text.trim(),
      );
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) => Home()),
      );
    }  on FirebaseAuthException catch (e) {
      if(e.code == 'user-not-found') {
        _showErrorDialog(context);
      }
    }
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.twilightBlue,
          title: Text(
            'Erro ao Entrar',
            style: GoogleFonts.lexendDeca(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w400
            ),
          ),
          content: Text(
            'Não conseguimos efetuar o seu login',
            style: GoogleFonts.lexend(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              }, 
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.matteBlack,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(
                  'Ok',
                  style: GoogleFonts.lexend(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.twilightBlue,
        body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 28),
          child: Center(
            child: Column(
                children: [
                    Text(
                        'Login',
                        style: AppTextStyles.loginTitleTxtPt1,
                    ),
                    Text(
                        'SIGA',
                        style: AppTextStyles.loginTitleTxtPt2,
                    ),
                    const SizedBox(height: 108),
                    Container(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 36),
                        width: 400,
                        height: 400,
                        decoration: BoxDecoration(
                            color: AppColors.matteBlack,
                            borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                            children: [
                                MyTextField(controller: _mailController, hintText: 'Digite seu e-mail'),
                                const SizedBox(height: 24,),
                                MyTextField(controller: _cpfController, hintText: 'Digite seu CPF'),
                                const SizedBox(height: 24,),
                                MyTextField(controller: _passwordController, hintText: 'Digite sua senha'),
                                const SizedBox(height: 56,),
                                //Botão
                                GestureDetector(
                                  onTap: () {
                                    _login();
                                  },
                                  child: Container(
                                      width: 360,
                                      height: 52,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[600],
                                          borderRadius: BorderRadius.circular(12)
                                      ),
                                      child: Center(
                                        child: Text(
                                            'Entrar',
                                            style: AppTextStyles.buttonStyleTxt,
                                        ),
                                      ),
                                  ),
                                ),
                                const SizedBox(height: 18,),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Soluções para problemas no acesso',
                                    style: AppTextStyles.loginFooterTxt,
                                  ),
                                ),
                            ],
                        ),
                    )
                ],
            ),
          ),
        ),
    );
  }
}