import 'package:sandwich_shop/repositories/pricing_repository.dart';

enum BreadType { white, wheat, wholemeal }

class CartItem {
  final String itemId;
  final int quantity;
  final bool isFootlong;
  final BreadType breadType;
  final String notes;

  CartItem({
    required this.itemId,
    required this.quantity,
    required this.isFootlong,
    required this.breadType,
    required this.notes,
  });

  double getItemPrice(PricingRepository pricingRepository) {
    return pricingRepository.calculatePrice(
      quantity: quantity,
      isFootlong: isFootlong,
    );
  }
}

class Cart {
  final PricingRepository pricingRepository;
  final List<CartItem> _items = [];

  Cart({required this.pricingRepository});

  List<CartItem> get items => List.unmodifiable(_items);

  void addItem({
    required String itemId,
    required int quantity,
    required bool isFootlong,
    required BreadType breadType,
    required String notes,
  }) {
    _items.add(CartItem(
      itemId: itemId,
      quantity: quantity,
      isFootlong: isFootlong,
      breadType: breadType,
      notes: notes,
    ));
  }

  void removeItem(int index) {
    if (index >= 0 && index < _items.length) {
      _items.removeAt(index);
    }
  }

  void clear() => _items.clear();

  double get total {
    double sum = 0;
    for (CartItem item in _items) {
      sum += item.getItemPrice(pricingRepository);
    }
    return sum;
  }

  int get itemCount => _items.fold(0, (sum, item) => sum + item.quantity);
}