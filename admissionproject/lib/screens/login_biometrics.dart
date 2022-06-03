import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/widgets.dart';
import 'package:admissionproject/api/local_auth_api.dart';
import 'package:admissionproject/users/applicant/appli_home.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatelessWidget {
  final Uri _phoneNumber = Uri.parse('+639987654321');
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: const Color.fromARGB(255, 226, 226, 226),
          body: Column(
            children: [
              const Flexible(
                child: Center(
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/images/logo.png'),
                    backgroundColor: Color.fromARGB(255, 226, 225, 225),
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const TextInputField(
                    icon: FontAwesomeIcons.userLarge,
                    hint: 'User ID',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  const PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Password',
                    inputAction: TextInputAction.done,
                  ),
                  
                  const SizedBox(
                    height: 25,
                  ),
                  const RoundedButton(
                    buttonName: 'Sign In',
                  ),
                  buildAuthenticate(context),
                  const SizedBox(
                    height: 10,
                  ),
                
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                  Text(
                    "Don't have an account yet?",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(199, 0, 0, 0),
                        height: 1.5),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Create New Account',
                    style: TextStyle(
                        color: Colors.blue, height: 1.5),
                  ),
                ]),
              ),
              const SizedBox(height: 15),
              const Text(
                    "For Inquiries:",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(199, 0, 0, 0),
                        height: 1.5),
                  ),
                  const SizedBox(height: 10),
                 Row(mainAxisAlignment: MainAxisAlignment.center, children:[
                  IconButton(
                    icon: const Icon(Icons.phone),
                    color: Colors.red,
                    onPressed:()async{
                      final Uri _call = Uri.parse('tel:$_phoneNumber'); 
                      if (await canLaunchUrl(_call)){
                        await launchUrl(_call);
                      }
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  IconButton(
                    icon: const Icon(Icons.sms),
                    color: Colors.red,
                    onPressed:()async{
                      final Uri _text = Uri.parse('sms:$_phoneNumber'); 
                      if (await canLaunchUrl(_text)){
                        await launchUrl(_text);
                      }
                    },
                  ),
                 ]
                 ),
                 const SizedBox(height: 20)
            ],
        ),
    ),
      ]
    );
  }
  Widget buildAuthenticate(BuildContext context) => buildButton(
        text: '',
        icon: Icons.fingerprint_rounded,
        onClicked: () async {
          final isAuthenticated = await LocalAuthApi.authenticate();

          if (isAuthenticated) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const AppliHome()),
            );
          }
        },
      );
  
  Widget buildButton({
    required String text,
    required IconData icon,
    required VoidCallback onClicked,
  }) =>
      TextButton.icon(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 15),
          primary: const Color.fromARGB(199, 0, 0, 0),
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        icon: Icon(icon, size: 40, color: const Color(0xFFEF3A25),),
        label: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
        onPressed: onClicked,
      );

}

