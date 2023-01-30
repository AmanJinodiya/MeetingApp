import 'package:flutter/material.dart';

class listDetails extends StatefulWidget {
  final String address, addhar, interest, birthdate;
  final int age;
  const listDetails(
      {super.key,
      required this.address,
      required this.addhar,
      required this.interest,
      required this.age,
      required this.birthdate});

  @override
  State<listDetails> createState() => _listDetailsState();
}

class _listDetailsState extends State<listDetails> {
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
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Details',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 220, 210, 152),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Address',
                                style: TextStyle(
                                    color: Color(0xFF75AE87),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                widget.address,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 220, 210, 152),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Interest',
                                style: TextStyle(
                                    color: Color(0xFF75AE87),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                widget.interest,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 220, 210, 152),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Age',
                                style: TextStyle(
                                    color: Color(0xFF75AE87),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                widget.age.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 220, 210, 152),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Birth Date',
                                style: TextStyle(
                                    color: Color(0xFF75AE87),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                widget.birthdate,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 220, 210, 152),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Aadhar/PAN ',
                                style: TextStyle(
                                    color: Color(0xFF75AE87),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                widget.addhar,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
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
