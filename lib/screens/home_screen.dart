import 'package:app_ui/widgets/linear_gradient.dart';
import 'package:app_ui/widgets/recently_used_device.dart';
import 'package:app_ui/widgets/room.dart';
import 'package:app_ui/widgets/routines_scrollview.dart';
import 'package:app_ui/widgets/weather_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Material(
          color: const Color(0xFFf5f5f5),
          child: Column(
            children: [
              Container(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 180,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xFF6e80e9),
                          Color(0xFFbe6cea),
                        ]),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                      child: const Bg(),
                    ),
                    Center(
                      child: Container(
                        width: 350,
                        height: 170,
                        margin: const EdgeInsets.only(top: 100),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 2,
                          color: const Color(0XFFffffff),
                          child: const WeatherCard(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Routines',
                        style: TextStyle(
                            color: Color(0xFFa69ebe),
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                            color: Color(
                              0xFFd8e2f0,
                            ),
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: const RoutineScroll(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Rooms',
                      style: TextStyle(
                          color: Color(0xFFa69ebe),
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                          color: Color(
                            0xFFd8e2f0,
                          ),
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: const Room(),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Recently used devices',
                      style: TextStyle(
                          color: Color(0xFFa69ebe),
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                          color: Color(
                            0xFFd8e2f0,
                          ),
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: const RecentlyDevices(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        backgroundColor: const Color(0xFFffffff),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              size: 32,
              Icons.home,
              color: Color(0xFFb56eea),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              size: 32,
              Icons.signal_cellular_alt,
              color: Color(0xFFc8d5e9),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              size: 32,
              Icons.notification_add_rounded,
              color: Color(0xFFc8d5e9),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              size: 32,
              Icons.settings,
              color: Color(0xFFc8d5e9),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
