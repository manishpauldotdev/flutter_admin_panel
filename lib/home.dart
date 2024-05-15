import 'package:admin_panel/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.sizeOf(context).width);
    // print(MediaQuery.sizeOf(context).height);
    return ScreenTypeLayout.builder(
      desktop: (context) => desktopView(),
    );
  }

  Widget desktopView() {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    return Container(
      decoration: const BoxDecoration(color: Colors.amber),
      child: Row(
        children: [
          Container(
            width: deviceWidth * 0.16,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 35, 35, 35),
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Name/Logo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const AppButton(btnText: 'Dashboard'),
                const SizedBox(height: 10),
                const AppButton(btnText: 'Statistics'),
                const SizedBox(height: 10),
                const Spacer(),
                const AppButton(btnText: 'Settings'),
                const SizedBox(height: 10),
                AppButton(
                  btnText: 'Logout',
                  btnBgColor: Colors.red[900]!,
                  btnTxtColor: Colors.white,
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
          Container(
            width: deviceWidth * 0.84,
            color: const Color.fromARGB(255, 24, 24, 24),
            child: Column(
              children: [
                Container(
                  height: 60,
                  color: const Color.fromARGB(255, 250, 250, 250),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
