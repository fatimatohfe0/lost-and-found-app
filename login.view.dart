import 'package:fatim/view/widgets/text.form.global.dart';
import 'package:flutter/material.dart';
import 'package:fatim/utils/global.colors.dart'; // Ensure this path is correct

class LoginView extends StatelessWidget {
   LoginView({super.key});
final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'FoundIT',
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                'LogIn to your account',
                style: TextStyle(
                  color: GlobalColors.mainColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                                ),
                const SizedBox(height: 15),
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email', obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 6),

                TextFormField(
                    controller: emailController ,
                    text: 'Password',
                    textInputType: TextInputType.text,
                    obscure: true),
          ],
            ),
        ),
        ),
      ),
    );
  }
}
