import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplicativo Do Cest'),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Inicio'),
              Tab(text: 'Login'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            // Home tab
            Center(
              child: Text('OS QUEBRA CODIGOS'),
            ),

            // Login tab
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cadastro',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  MaterialButton(
                    child: Text('Login'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
