import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 58, 11, 146),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 25,
            right: 10,
            left: 10,
          ),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Usuário: ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 250, 249, 252)),
              ),
              TextFormField(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Senha:',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 250, 249, 252)),
              ),
              TextFormField(
                obscureText: value,
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  value = !value;
                  setState(() {});
                },
                color: Color.fromARGB(255, 58, 11, 146),
                child: Text(value ? 'Mostrar senha' : 'Ocultar senha'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
