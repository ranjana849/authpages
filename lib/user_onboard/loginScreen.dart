import 'package:flutter/material.dart';
import 'package:loginpage/ui_helper/App_Color.dart';
import 'package:loginpage/user_onboard/resetPasswordScreen.dart';
import 'package:loginpage/user_onboard/sginUpScreen.dart';
import '../ui_helper/appiconhelper.dart';
import '../widgets/riveAnimationWidgets.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mq =MediaQuery.of(context);
    return Scaffold(
       body:mq.orientation == Orientation.portrait ? _portraitLay() : _landscapeLay() ,

    );
  }

  Widget _portraitLay(){
return LayoutBuilder(builder: (context,constraints){
  return  constraints.maxWidth>500 ? Padding(
    padding: const EdgeInsets.all(18.0),
    child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 320,
                child: RiveAnimationWidget()),
            SizedBox(height:10,),
            Text('Hello, again',
            style: mTextStyle43(),),
            Text('Start adding your expenses in one click',
              style: mTextStyle16(),),
            SizedBox(height: 12,),
            TextFormField(
              controller:emailController ,
              keyboardType: TextInputType.emailAddress,
              decoration: fieldDecoration(
                  hint: 'Enter your Email',
                  prefixIcon: Icons.email,
                  suffixIcon: Icons.clear,
                  labelText:'Email',
            ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                // You can add additional email validation here
                return null;
              },
            ),
            SizedBox(height: 6,),
            TextFormField(
              controller:passwordController ,
              obscureText: true,
              decoration: fieldDecoration(
                hint: 'Enter your Password',
                prefixIcon: Icons.password,
                suffixIcon: Icons.visibility,
                isPasswordField: true,
                labelText:'Password',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a password';
                }
                // You can add additional password validation here
                return null;
              },
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                if (_formKey.currentState!.validate()) {
                  _login();
                }
              },
                  child: Text('Login')),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
               Navigator.push(context,MaterialPageRoute(builder: (context)=>SignupScreen()));
              },
                  child: Text('Sginup')),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                showBottomSheet(context: context,
                    builder: (context)=>PasswordResetScreen());
              },
              child: Text('Password Reset'),),
            ),
            SizedBox(height: 8,),
            AppLogoWidget(),
          ],
        ),
      ),
    ),
  ):Column(
  );

});
  }


  Widget _landscapeLay(){
return Row();
  }

  void _login() {
    // Implement your login logic here
    String email = emailController.text;
    // You can also get the password here: String password = _passwordController.text;
    // Perform the necessary login actions

    showDialog(
        context: context,
        builder: (BuildContext context) {
      return AlertDialog(
          title: Text('Login Successful'),
    content: Text('You have successfully logged in with $email'),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
          emailController.clear();
          passwordController.clear();
        },
        child: Text('OK'),
      ),
    ],
      );
        },
    );
  }
  }
