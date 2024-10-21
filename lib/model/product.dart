class Product {
  final String productImage;
  final String productName;
  final String productPrice;
  final String productCategory;
  final int productStock;

  const Product({
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.productCategory,
    required this.productStock,
  });
}

final List<Product> itemProduct = [
  const Product(
      productImage: 'assets/products/image.png',
      productName: 'Rinso',
      productPrice: '14.000',
      productCategory: 'Sabun',
      productStock: 12),
  const Product(
      productImage: 'assets/products/image.png',
      productName: 'Floridina',
      productPrice: '3.000',
      productCategory: 'Minuman',
      productStock: 4),
  const Product(
      productImage: 'assets/products/image.png',
      productName: 'Obeng',
      productPrice: '25.000',
      productCategory: 'Peralatan',
      productStock: 5),
  const Product(
      productImage: 'assets/products/image.png',
      productName: 'Pop Mie',
      productPrice: '5.000',
      productCategory: 'Makanan',
      productStock: 0),
];
