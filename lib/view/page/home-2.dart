import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kas_mini_flutter_app/utils/colors.dart';
import 'package:kas_mini_flutter_app/view/page/setting.dart';
import 'package:kas_mini_flutter_app/view/widget/category_card.dart';
import 'package:kas_mini_flutter_app/view/widget/home_card.dart';
import 'package:kas_mini_flutter_app/view/widget/product_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Gap(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nama Toko",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text("Alamat Lengkap Toko"),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const SettingPage()));
                      },
                      child: Icon(
                        Icons.settings_applications_rounded,
                        size: 50,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                  child: Container(
                    width: double.infinity,
                    height: 105,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Penjualan Hari Ini",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text("Rp.1.000.000",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  )),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 650,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: MainCard(
                                  title: "waw",
                                  icon: Icons.person,
                                )),
                                Gap(10),
                                Expanded(
                                    child: MainCard(
                                  title: "waw",
                                  icon: Icons.person,
                                )),
                              ],
                            ),
                            Gap(10),
                            Row(
                              children: [
                                Expanded(
                                    child: MainCard(
                                  title: "waw",
                                  icon: Icons.add_a_photo_outlined,
                                )),
                                Gap(10),
                                Expanded(
                                    child: MainCard(
                                  title: "waw",
                                  icon: Icons.person,
                                )),
                              ],
                            ),
                            Gap(10),
                            Row(
                              children: [
                                Expanded(
                                    child: MainCard(
                                  title: "waw",
                                  icon: Icons.add_a_photo_outlined,
                                )),
                                Gap(10),
                                Expanded(
                                    child: MainCard(
                                  title: "waw",
                                  icon: Icons.person,
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 40,
            right: 10,
            left: 10,
            child: FloatingActionButton(
              onPressed: () {},
              shape: CircleBorder(),
              backgroundColor:
                  secondaryColor, // Ganti dengan warna yang diinginkan
              child: const Icon(Icons.add, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
