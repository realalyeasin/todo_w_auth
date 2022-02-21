import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen>
    with SingleTickerProviderStateMixin {
  late FancyDrawerController _controller;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: const Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        controller: _controller,
        backgroundColor: const Color.fromRGBO(2, 32, 40, 1),
        drawerPadding: const EdgeInsets.all(60),
        drawerItems: const [
          Text(
            'About',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Text(
            'Home',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Text(
            'Services',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Text(
            'News',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Text(
            'Account',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Text(
            'Setting',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Text(
            'Log Out',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.border_all_rounded),
              onPressed: () {
                _controller.toggle();
              },
            ),
            backgroundColor: const Color.fromRGBO(3, 14, 72, 1),
            title: const Text(
              'To-Do List',
              style: TextStyle(letterSpacing: 3),
            ),
            centerTitle: true,
            elevation: 0,
          ),
          backgroundColor: const Color.fromRGBO(7, 32, 152, 1),
          body: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(127, 185, 135, 1),
            ),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 30, right: 30),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      onChanged: (text) {},
                      controller: _email,
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        border: UnderlineInputBorder(),
                        hintText: 'Enter mail',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      onChanged: (text) {},
                      controller: _pass,
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                        border: UnderlineInputBorder(),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Container(
                      width: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(3, 14, 72, 1)),
                          onPressed: () {},
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
