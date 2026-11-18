
const menu = {
  'Adobo rice': 85.0,
  'Iced tea': 35.0,
  'Turon': 25.0,
};

class OrderItem {
  final String name;
  final double price;
  final int qty;

  OrderItem(this.name, this.price, this.qty);

  double get subtotal => price * qty;
}

OrderItem orderOf(String name, int qty) {
  final price = menu[name];

  if (price == null) {
    throw ArgumentError('Item not found: $name');
  }

  return OrderItem(name, price, qty);
}

double total(List<OrderItem> items) {
  return items.fold(0.0, (sum, item) => sum + item.subtotal);
}

void printReceipt(List<OrderItem> items, {String? customer}) {
  final name = customer ?? 'Guest';
  final subtotal = total(items);
  final discount = subtotal >= 300 ? subtotal * 0.10 : 0.0;
  final finalTotal = subtotal - discount;

  print('Order for $name');
  print('--------------------------------');

  for (final item in items) {
    final description = '${item.qty} x ${item.name}'.padRight(20);
    print('$description${item.subtotal.toStringAsFixed(2).padLeft(8)}');
  }

  print('--------------------------------');
  print('${'Subtotal'.padRight(20)}${subtotal.toStringAsFixed(2).padLeft(8)}');

  if (discount > 0) {
    print('${'Discount 10%'.padRight(20)}-${discount.toStringAsFixed(2)}');
  }

  print('${'Total'.padRight(20)}${finalTotal.toStringAsFixed(2).padLeft(8)}');
  print('');
}

void main() {
  final firstOrder = [
    orderOf('Adobo rice', 3),
    orderOf('Iced tea', 1),
    orderOf('Turon', 3),
  ];

  printReceipt(firstOrder);

  final secondOrder = [
    orderOf('Adobo rice', 1),
    orderOf('Iced tea', 1),
  ];

  printReceipt(secondOrder, customer: 'Emmanuel');
}
