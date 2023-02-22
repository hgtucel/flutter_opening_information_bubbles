import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? number;

  @override
  void initState() {
    number = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF231f20),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text("Menu 1"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF231f20),
        onPressed: () {},
        child: const Icon(Icons.settings),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            number = (number ?? 0) + 1;
                          });
                        },
                        icon: const Icon(Icons.add))),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xFF231f20),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        const Text(
                          "NUMBER",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                        Text("$number",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 42))
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: IconButton(
                        onPressed: () {
                          if ((number ?? 0) > 0) {
                            setState(() {
                              number = (number ?? 0) - 1;
                            });
                          }
                        },
                        icon: const Icon(Icons.remove))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
