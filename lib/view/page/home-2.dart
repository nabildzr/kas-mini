import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kas_mini_flutter_app/utils/colors.dart';
import 'package:kas_mini_flutter_app/view/page/add_product.dart';
import 'package:kas_mini_flutter_app/view/page/category_product.dart';
import 'package:kas_mini_flutter_app/view/page/product.dart';
import 'package:kas_mini_flutter_app/view/page/setting.dart';
import 'package:kas_mini_flutter_app/view/widget/menu_card.dart';
import 'package:kas_mini_flutter_app/view/widget/page_title.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const PageTitle(title: "HOME"),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          const Gap(10),
                          const Column(
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SettingPage()));
                        },
                        child: const Icon(
                          Icons.settings_outlined,
                          size: 32,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                    child: IntrinsicHeight(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Penjualan Hari Ini",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text("Rp.1.000.000",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
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
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 20),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: MainCard(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const Home(),
                                          ));
                                    },
                                    title: "Transaksi",
                                    icon: Icons.payments_outlined,
                                  )),
                                  const Gap(10),
                                  Expanded(
                                      child: MainCard(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) =>
                                                        const ProductPage()));
                                          },
                                          title: "Produk",
                                          icon: Icons.shopping_bag_outlined)),
                                ],
                              ),
                              const Gap(10),
                              Row(
                                children: [
                                  Expanded(
                                      child: MainCard(
                                    onTap: () {},
                                    title: "Riwayat",
                                    icon: Icons.history,
                                  )),
                                  const Gap(10),
                                  Expanded(
                                      child: MainCard(
                                    onTap: () {},
                                    title: "Laporan",
                                    icon: Icons.receipt_outlined,
                                  )),
                                ],
                              ),
                              const Gap(10),
                              Row(
                                children: [
                                  Expanded(
                                      child: MainCard(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const CategoryProductPage()));
                                    },
                                    title: "Tambah Kategori",
                                    icon: Icons.category_outlined,
                                  )),
                                  Expanded(
                                      child: Text("")),
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
                shape: const CircleBorder(),
                backgroundColor:
                    secondaryColor, // Ganti dengan warna yang diinginkan
                child: const Icon(Icons.add, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
