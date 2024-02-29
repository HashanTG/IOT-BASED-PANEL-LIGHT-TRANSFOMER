import 'dart:ui';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  List mySmartDevices = [
    ["Smart Light", "lib/icons/light-bulb.png", false],
    ["Smart Light", "lib/icons/light-bulb.png", false],
    ["Smart Light", "lib/icons/light-bulb.png", false],
    ["Smart Light", "lib/icons/light-bulb.png", false],
  ];

  bool status = true;
  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseDatabase.instance
        .ref()
        .child('/Light/state')
        .onValue
        .listen((event) {
      status = event.snapshot.value as bool;
    });
  }

  void state() {
    if (status == true) {
      FirebaseDatabase.instance.ref().child('/Light/state').set(false);
    } else if (status == false) {
      FirebaseDatabase.instance.ref().child('/Light/state').set(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 188, 188),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 45,
                    color: Colors.grey[800],
                  ),
                  // menu icon
                  // Image.asset(
                  //   'lib/icons/menu.png',
                  //   height: 45,
                  //   color: Colors.grey[800],
                  // ),

                  Icon(
                    Icons.circle,
                    size: 45,
                    color: Colors.grey[800],
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi,",
                    style: TextStyle(fontSize: 22, color: Colors.grey.shade800),
                  ),
                  Text(
                    'Hashan T',
                    style: GoogleFonts.bebasNeue(fontSize: 72),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Divider(
                thickness: 1,
                color: Color.fromARGB(255, 48, 46, 46),
              ),
            ),

            const SizedBox(height: 25),

            // smart devices grid
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                "Connected Devices",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            const SizedBox(height: 10),

            // grid
            // Expanded(
            //   child: GridView.builder(
            //     itemCount: 4,
            //     physics: const NeverScrollableScrollPhysics(),
            //     padding: const EdgeInsets.symmetric(horizontal: 25),
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       childAspectRatio: 1 / 1.3,
            //     ),
            //     itemBuilder: (context, index) {
            //       return SmartDeviceBox(
            //         smartDeviceName: mySmartDevices[index][0],
            //         iconPath: mySmartDevices[index][1],
            //         powerOn: mySmartDevices[index][2],
            //         onChanged: (value) => powerSwitchChanged(value, index),
            //       );
            //     },
            //   ),
            // ),

            Center(
              child: ElevatedButton.icon(
                onPressed: state,
                icon: const Icon(
                  Icons.lightbulb,
                  size: 50,
                  color: Color.fromARGB(255, 0, 0, 0),
                ), // Your desired icon
                label: const Text('ROOM 01     ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(0, 38, 40, 48),
                  fixedSize:
                      const Size(500, 70), // Set the size to make it square
                  shape: const RoundedRectangleBorder(
                    // Shape for square button
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)), // Remove rounded corners
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Center(
              child: ElevatedButton.icon(
                onPressed: state,
                icon: const Icon(
                  Icons.lightbulb,
                  size: 50,
                  color: Color.fromARGB(255, 0, 0, 0),
                ), // Your desired icon
                label: const Text('LIVING ROOM',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(0, 38, 40, 48),
                  fixedSize:
                      const Size(500, 70), // Set the size to make it square
                  shape: const RoundedRectangleBorder(
                    // Shape for square button
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)), // Remove rounded corners
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Center(
              child: ElevatedButton.icon(
                onPressed: state,
                icon: const Icon(
                  Icons.lightbulb,
                  size: 50,
                  color: Color.fromARGB(255, 0, 0, 0),
                ), // Your desired icon
                label: const Text('KITCHEN    ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(0, 38, 40, 48),
                  fixedSize:
                      const Size(500, 70), // Set the size to make it square
                  shape: const RoundedRectangleBorder(
                    // Shape for square button
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)), // Remove rounded corners
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
