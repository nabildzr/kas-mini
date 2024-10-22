import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kas_mini_flutter_app/view/widget/custom_textfield.dart';
import 'package:kas_mini_flutter_app/view/widget/page_title.dart';
import 'package:kas_mini_flutter_app/view/widget/primary_button.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  // Placeholder for the onPressed function for the button
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding around the content
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
              children: [
                const Center(
                  child: PageTitle(title: "TAMBAH PRODUCT"), // title
                ),
                const Gap(50), // Space between title and input fields
                const Expanded(
                  child: Column(
                    children: [
                      // Input field
                      CustomTextField(
                        maxLines: null,
                        suffixIcon: null,
                        obscureText: false,
                        hintText: 'Nama Produk',
                        prefixIcon: Icon(Icons.email_outlined), // Icon on the left
                        controller: null, // Controller can be added later for state management
                      ),
                      Gap(20), // Space between fields
                      CustomTextField(
                        maxLines: null,
                        suffixIcon: null,
                        obscureText: false,
                        hintText: 'Kategori',
                        prefixIcon: Icon(Icons.description),
                        controller: null,
                      ),
                      Gap(20), 
                      CustomTextField(
                        maxLines: null,
                        suffixIcon: null,
                        obscureText: false,
                        hintText: 'Harga',
                        prefixIcon: Icon(Icons.money), 
                        controller: null,
                      ),
                      Gap(20),
                      CustomTextField(
                        maxLines: null,
                        obscureText: false,
                        hintText: 'Status Produk',
                        suffixIcon: Icon(Icons.keyboard_arrow_down), // Down arrow icon on the right
                        controller: null,
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                    ],
                  ),
                ),
                // Primary button at the bottom
                PrimaryButton(
                  widthPercent: 0.9,
                  text: 'SIMPAN', // Text on the button
                  onPressed: () {
                    // Define what happens when the button is pressed
                    // For example, you could validate the input fields and save the data
                    print('Simpan button pressed'); // Temporary action for demonstration
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
