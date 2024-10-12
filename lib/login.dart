import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController(); //контроллер (видаляє написаний текст в полі вводу name)
  final _passwordController = TextEditingController();//контроллер (видаляє написаний текст в полі вводу password)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: <Widget>[
            const SizedBox(height: 80.0),
            //
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text('SHRINE'),
              ],
            ),
            const SizedBox(height: 120.0),
            //
            TextField(
              controller: _usernameController,// встановлює контроллер
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'User name',
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 20,
            ),
            //
            TextField(
              controller: _passwordController,// встановлює контроллер
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true, // маскує текст (для паролів)
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    _usernameController.clear();// Запускає контроллери при натисканні cancel
                    _passwordController.clear();// Запускає контроллери при натисканні cancel
                  },
                ),
                ElevatedButton(
                  child: Text('NEXT'),
                  onPressed: () {
                    Navigator.pop(context);// запускає навігацію
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
