import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int number;

  @override
  void initState() {
    super.initState();
    number = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.list),
        title: const Text(
          "Flutter Training",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          number++;
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 50,
                    )),
              ),
              Text(
                '$number',
                style: const TextStyle(fontSize: 50),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        number--;
                      });
                    },
                    icon: const Icon(
                      Icons.remove,
                      size: 50,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
