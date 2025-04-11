import 'package:auth_app/components/app_big_button.dart';
import 'package:auth_app/components/app_big_icon.dart';
import 'package:auth_app/components/app_text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * .06),
            Icon(Icons.lock, size: screenHeight * .12),

            SizedBox(height: screenHeight * .05),

            // welcome message
            Text(
              'Welcome back you\'ve been missed!',
              style: TextStyle(
                fontSize: screenHeight * 0.022,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            SizedBox(height: screenHeight * .04),

            // text fields
            AppTextField(
              hint: 'Username',
              controller: usernameController,
              hintSize: screenHeight * .022,
            ),

            SizedBox(height: screenHeight * .012),

            AppTextField(
              hint: 'Password',
              controller: passwordController,
              hintSize: screenHeight * .022,
            ),

            SizedBox(height: screenHeight * .01),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Passoword?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: screenHeight * .022,
                    decoration: TextDecoration.underline,
                    decorationColor: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),

            SizedBox(height: screenHeight * .025),

            AppBigButton(buttonName: 'Sign in', onTap: () {}),

            SizedBox(height: screenHeight * .05),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).colorScheme.primary,
                      thickness: .8,
                    ),
                  ),
                  Text(
                    'Or continue with',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: screenHeight * .025,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).colorScheme.primary,
                      thickness: .8,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: screenHeight * .05),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBigIcon(iconPath: 'assets/images/google.png', onTap: () {}),
                SizedBox(width: screenWidth * .05),
                AppBigIcon(iconPath: 'assets/images/github.png', onTap: () {}),
              ],
            ),

            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member? ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: screenHeight * .02,
                  ),
                ),
                Text(
                  'Register now',
                  style: TextStyle(
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,
                    fontSize: screenHeight * .02,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue[700],
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
