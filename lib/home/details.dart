import 'package:flutter/material.dart';
import 'package:meetapp/home/homepage.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  final _addresscontroller = TextEditingController();
  final _agecontroller = TextEditingController();
  final _addharcontroller = TextEditingController();
  final _birthcontroller = TextEditingController();
  final _interstcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        const Text(
                          "Add Details",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        const Text(
                          "Add Description to Your event",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: TextField(
                              controller: _addresscontroller,
                              decoration: const InputDecoration(
                                hintText: 'Sector 25, Chandigarh',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                label: Text('Address'),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: TextField(
                              controller: _agecontroller,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                label: Text('Age'),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: TextField(
                              controller: _birthcontroller,
                              decoration: const InputDecoration(
                                hintText: '12/12/20',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                label: Text('Birthdate'),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: TextField(
                              controller: _addharcontroller,
                              decoration: const InputDecoration(
                                hintText: "35202125052",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                label: Text('Addhar/PAN No.'),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: TextField(
                              controller: _interstcontroller,
                              decoration: const InputDecoration(
                                hintText: 'Drawing...',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                label: Text('Interest'),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homepage()));
                            // Navigator.pop(context);
                          }),
                          child: Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: const BoxDecoration(
                                color: Color(0xFF75AE87),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: const Center(
                              child: Text(
                                "Add Details",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
