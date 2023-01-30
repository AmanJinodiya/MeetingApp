// To parse this JSON data, do
//
//     final mod = modFromJson(jsonString);

import 'dart:convert';

Mod modFromJson(String str) => Mod.fromJson(json.decode(str));

String modToJson(Mod data) => json.encode(data.toJson());

class Mod {
    Mod({
        required this.topic,
        required this.address,
        required this.birthdate,
        required this.age,
        required this.aadhar,
        required this.interest,
        required this.qr,
    });

    String topic;
    String address;
    String birthdate;
    int age;
    String aadhar;
    String interest;
    String qr;

    

    factory Mod.fromJson(Map<String, dynamic> json) => Mod(
        topic: json["topic"],
        address: json["address"],
        birthdate: json["birthdate"],
        age: json["age"],
        aadhar: json["aadhar"],
        interest: json["interest"],
        qr: json["qr"],
    );

    Map<String, dynamic> toJson() => {
        "topic": topic,
        "address": address,
        "birthdate": birthdate,
        "age": age,
        "aadhar": aadhar,
        "interest": interest,
        "qr": qr,
    };
}
