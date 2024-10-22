import 'package:flutter/material.dart';
import 'package:gap/gap.dart';



class ListCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tambah Kategori'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nama Kategori',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Gap(8),
              ElevatedButton(
                onPressed: () {},
                child: Text('SIMPAN'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade300,
                  padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                  textStyle: TextStyle(fontSize: 16.0),
                ),
              ),
              Gap(20),
              Text(
                'Kategori Produk',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(8),
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Nama Kategori Produk 1'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
