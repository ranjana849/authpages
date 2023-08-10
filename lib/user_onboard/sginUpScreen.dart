import 'package:flutter/material.dart';
import '../ui_helper/App_Color.dart';
import '../ui_helper/appiconhelper.dart';
import '../widgets/riveAnimationWidgets.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var nameController =TextEditingController();
  var emailController =TextEditingController();
  var passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mq =MediaQuery.of(context);
    return Scaffold(
      body:  mq.orientation == Orientation.portrait ? _portraitLay() : _landscapeLay() ,

    );
  }
  Widget _portraitLay(){
    return LayoutBuilder(builder: (context,constraints){
      return  constraints.maxWidth>500 ? Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                      height: 320,
                      child: RiveAnimationWidget()),
                  SizedBox(height: 20,),
                  Text('Hello, again',
                    style: mTextStyle43(),),
                  Text('Start adding your expenses in one click',
                    style: mTextStyle16(),),
                  SizedBox(height: 12,),
                  TextField(
                    controller:nameController ,
                    decoration: fieldDecoration(
                      hint: 'Enter your Name',
                      prefixIcon: Icons.account_box,
                      labelText:'Name',
                    ),),

                  SizedBox(height: 6,),
                  TextField(
                    controller:emailController ,
                    decoration: fieldDecoration(
                      hint: 'Enter your Email',
                      prefixIcon: Icons.email,
                      suffixIcon: Icons.clear,
                      labelText:'Email',
                    ),),
                  SizedBox(height: 6,),
                  TextField(
                    controller:passwordController ,
                    decoration: fieldDecoration(
                      hint: 'Enter your Password',
                      prefixIcon: Icons.password,
                      suffixIcon: Icons.visibility,
                      isPasswordField: true,
                      labelText:'Password',
                    ),),
              SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){},
                    child: Text('Login')),
              ),
              SizedBox(height: 8,),
              AppLogoWidget(),
                ],
              ),


        ),
      ):Column();

    });
  }
  Widget _landscapeLay(){
    return Row();
  }

  }

