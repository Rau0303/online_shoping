import 'package:flutter/material.dart';
import 'package:online_shopping/services/constants.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _userEmailController = TextEditingController();
  final TextEditingController _userPassController = TextEditingController();
  final TextEditingController _userConPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              RichText(text: const TextSpan(
                text: "Регистрация",
                style: title,
              )),
              RichText(text: const TextSpan(
                text: "Запольните все поля,чтобы создать аккаунт",
                style: subTitle,
              )),
              betSize,
              TextFormField(
                controller: _userNameController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: "Логин",
                  prefixIcon: const Icon(Icons.people),
                ),
                validator: (_userNameController)  {
                  if(_userNameController!.isEmpty){
                    return "Поля не может быть пустым!";
                  }
                  return null;
              },
              ),
              betSize,
              TextFormField(
                controller: _userEmailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: "Email",
                  prefixIcon: const Icon(Icons.email),
                ),
                validator: (_userEmailController){
                  if(_userEmailController!.isEmpty){
                    return "Поле не может быть пустым!";
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
                validator: (_userPassController){
                  if(_userPassController!.isEmpty){
                    return "Поле не может быть пустым!";
                  }
                  else if(_userPassController.length<8){
                    return "меньше 8 символов не принимаю!";
                  }
                  return null;
                },
              ),
              betSize,
              TextFormField(
                controller: _userConPassController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: "Confirm password",
                  prefixIcon: const Icon(Icons.lock),
                ),
                validator: (_userConPassController){
                  if(_userConPassController!.isEmpty){
                    return "Поле не может быть пустым!";
                  }
                  else if (_userConPassController!=_userPassController){
                    return "Поля не совпадают!";
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
