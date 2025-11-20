import 'package:flutter_test/flutter_test.dart';
import 'package:sandwich_shop/repositories/pricing_repository.dart';

void main() {
  group('PricingRepository', () {
    late PricingRepository pricingRepository;

    setUp(() {
      pricingRepository = PricingRepository();
    });

    test('should return correct price for six-inch sandwich', () {
      final price = pricingRepository.getPrice(isFootlong: false, quantity: 2);
      expect(price, 10.0); // 5.0 * 2
    });

    test('should return correct price for footlong sandwich', () {
      final price = pricingRepository.getPrice(isFootlong: true, quantity: 3);
      expect(price, 24.0); // 8.0 * 3
    });

    test('should return zero for quantity of zero', () {
      final price = pricingRepository.getPrice(isFootlong: true, quantity: 0);
      expect(price, 0.0);
    });

    test('should return correct price for multiple quantities of six-inch', () {
      final price = pricingRepository.getPrice(isFootlong: false, quantity: 5);
      expect(price, 25.0); // 5.0 * 5
    });

    test('should return correct price for multiple quantities of footlong', () {
      final price = pricingRepository.getPrice(isFootlong: true, quantity: 4);
      expect(price, 32.0); // 8.0 * 4
    });
  });
}