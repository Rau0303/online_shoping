import 'package:flutter/material.dart';
import 'package:online_shopping/services/constants.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();

}



class _loginPageState extends State<loginPage> {
  final TextEditingController  _userNameController = TextEditingController();
  final TextEditingController _userPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40 ),
              height: MediaQuery.of(context).size.height*0.30,
              width: MediaQuery.of(context).size.width*0.65,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/login.png"),
                    fit: BoxFit.fitHeight
                )
              ),
            ),
            betSize,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: const TextSpan(
                      text: "Book shop",
                      style: title
                    ) ,
                ),

              ],


            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                      text: "Введите свой логин и пароль, чтобы войти",
                      style: subTitle
                  ) ,
                ),

              ],
            ),
            betSize,
            Container(
              width: MediaQuery.of(context).size.width-40,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _userNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      hintText: "Логин",
                      prefixIcon: const Icon(Icons.email)
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "pleas enter your email!";
                      }
                      return null;
                    },
                  ),
                  betSize,
                  TextFormField(
                    controller: _userPassController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      hintText: "Пароль",
                      prefixIcon: const Icon(Icons.lock),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Пожалуйста заполните форму";
                      }else if(value.length< 8){
                        return "Пароль меньше 8 символов!";
                      }
                      return null;
                  },
                  ),
                ],
              ),


            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: (){},
                    child: const Text("Забыли пароль?"))
              ],
            ),
            betSize,
            TextButton(
                onPressed: (){},
            style: TextButton.styleFrom(
              minimumSize: const Size(180,50),
              primary: Colors.white,
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),

              )

            ),
                child: const Text('Войти',style: buttonText),
            ),
            betSize,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(text: const TextSpan(
                  text: "Нет аккаунта?",
                  style: subTitle
                )),
                TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/signUp");
                    },
                    child: const Text("Зарегистрируйтесь!"))
              ],
            )
          ],
        ),
      )
    );
  }
}
