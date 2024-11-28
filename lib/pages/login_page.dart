import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_textfield.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordContorller=TextEditingController();
   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),


            const SizedBox(height: 25),

            //message
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            //email
            MyTextField(
             controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),


            const SizedBox(height: 25),


            //password
            MyTextField(
              controller: passwordContorller,
              hintText: "Password",
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
