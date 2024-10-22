import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kas_mini_flutter_app/model/product.dart';
import 'package:kas_mini_flutter_app/utils/colors.dart';
import 'package:kas_mini_flutter_app/view/widget/category_product.dart';
import 'package:kas_mini_flutter_app/view/widget/custom_textfield.dart';
import 'package:kas_mini_flutter_app/view/widget/page_title.dart';
import 'package:kas_mini_flutter_app/view/widget/primary_button.dart';

class CategoryProductPage extends StatefulWidget {
  const CategoryProductPage({super.key});

  @override
  State<CategoryProductPage> createState() => _CategoryProductPageState();
}

class _CategoryProductPageState extends State<CategoryProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: greyColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const PageTitle(title: "KATEGORI"),
              Gap(20),
              Container(
                height: 155,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 26,
                      right: 12,
                      left: 12,
                    ),
                    
                    child: Column(
                      children: [
                        CustomTextField(
                            suffixIcon: null,
                            maxLines: null,
                            obscureText: false,
                            hintText: "Nama Kategori",
                            prefixIcon: Icon(Icons.email),
                            controller: null),
                        Gap(14),
                        PrimaryButton(
                            widthPercent: 1.0,
                            text: "SIMPAN",
                            onPressed: () {
                              print("Simpan");
                            })
                      ],
                    )),
              ),
              const Gap(20),
              const Row(
                children: [Text("Kategori Product")],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: itemProduct.length,
                    itemBuilder: (context, index) {
                      return CategoryProduct(
                          productCategory: itemProduct[index].productCategory,
                          onTapEdit: () {
                            print("waw");
                          },
                          onTapDelete: () {
                            print("waw");
                          });
                    }),
              )
            ],
          ),
        ));
  }
}
