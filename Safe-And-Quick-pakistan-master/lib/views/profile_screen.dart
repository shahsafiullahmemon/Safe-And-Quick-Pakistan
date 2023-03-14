import 'package:flutter/material.dart';
import 'package:squip/view_models/profile_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileScreenViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              backgroundColor: const Color(0xffFFFFFF),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 70,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "User Name",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 80,
                      width: 280,
                      child: Card(
                        color: Colors.blue,
                        child: Stack(
                          children: [
                            const Positioned(
                                top: 15,
                                left: 20,
                                child: Icon(
                                  Icons.calendar_month_outlined,
                                  size: 40,
                                )),
                            const Positioned(
                                top: 10,
                                left: 100,
                                child: Text(
                                  "Joined On",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                            const Positioned(
                                top: 32,
                                left: 103,
                                child: Text("1st feb 2023",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 40,
                      width: 280,
                      child: ElevatedButton(
                        onPressed: () {
                          viewModel.logout();
                        },
                        child: const Center(
                          child: Text(
                            "Logout",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            primary: Colors.blue),
                      ),
                    ),
                  )
                ],
              ));
        });
  }
}
