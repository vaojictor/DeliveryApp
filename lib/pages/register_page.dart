import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 75,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            // message, app slogan
            Text(
              'Vamos criar uma conta para você',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),

            // email texfield
            MyTextfield(
              controller: emailController,
              hintText: "E-mail",
              obscureText: false,
            ),
            const SizedBox(height: 10),

            // password texfield
            MyTextfield(
              controller: passwordController,
              hintText: "Senha",
              obscureText: true,
            ),
            const SizedBox(height: 10),

            // confirm password texfield
            MyTextfield(
              controller: confirmPasswordController,
              hintText: "Confirmar Senha",
              obscureText: true,
            ),

            const SizedBox(height: 25),

            // sign in button
            MyButton(onTap: () {}, text: "Criar Conta"),

            const SizedBox(height: 25),

            // already have a account?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Já tem uma conta?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),

                const SizedBox(width: 5),

                // register now
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Entre aqui',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
