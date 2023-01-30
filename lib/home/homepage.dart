import 'package:flutter/material.dart';
import 'package:meetapp/home/listDetails.dart';
import 'package:meetapp/home/scan_qr.dart';
import 'package:meetapp/model/mod.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var list = [];

  add_dumy() {
    var m = Mod(
        topic: "Pollution",
        address: "sector 23,chandigarh",
        birthdate: "12/6/200",
        age: 18,
        aadhar: "348000103420",
        interest: "android",
        qr: "https://leetcode.com/problems/number-of-submatrices-that-sum-to-target/description/");
    list.add(m);
    list.add(m);
    list.add(m);
    list.add(m);
  }

  @override
  void initState() {
    // TODO: implement initState
    add_dumy();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'New',
                          style: TextStyle(fontSize: 33),
                        ),
                        Text(
                          'Meetings',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 70,
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '24',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              'JUL',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            color: Color(0xFFF5E05B),
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          list[index].topic,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text(
                                          "8 pepoles",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "27 oct",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[700]),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    listDetails(
                                                      address:
                                                          list[index].address,
                                                      addhar:
                                                          list[index].aadhar,
                                                      birthdate:
                                                          list[index].birthdate,
                                                      interest:
                                                          list[index].interest,
                                                      age: list[index].age,
                                                    )));
                                      },
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                            color: Color(0xFF75AE87),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: const Center(
                                          child: Text("Details"),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.dashboard_outlined,
                size: 35,
              ),
              ClipOval(
                child: Material(
                  color: Colors.black, // Button color
                  child: InkWell(
                    // Splash color
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => scanQr()));
                    },
                    child: const SizedBox(
                        width: 56,
                        height: 56,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              const Icon(
                Icons.stacked_line_chart,
                size: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
