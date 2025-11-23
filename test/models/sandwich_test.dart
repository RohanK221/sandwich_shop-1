import 'package:flutter_test/flutter_test.dart';
import 'package:sandwich_shop/models/sandwich.dart';

void main() {
  group('Sandwich', () {
    test('creates a sandwich with correct properties', () {
      final sandwich = Sandwich(
        type: SandwichType.chickenTeriyaki,
        isFootlong: true,
        breadType: BreadType.wheat,
      );

      expect(sandwich.type, SandwichType.chickenTeriyaki);
      expect(sandwich.isFootlong, true);
      expect(sandwich.breadType, BreadType.wheat);
    });

    test('name getter returns correct sandwich name', () {
      final sandwich = Sandwich(
        type: SandwichType.tunaMelt,
        isFootlong: false,
        breadType: BreadType.white,
      );

      expect(sandwich.name, 'Tuna Melt');
    });

    test('image path is correct for footlong sandwich', () {
      final sandwich = Sandwich(
        type: SandwichType.meatballMarinara,
        isFootlong: true,
        breadType: BreadType.wholemeal,
      );

      expect(sandwich.image, 'assets/images/meatballMarinara_footlong.png');
    });

    test('image path is correct for six inch sandwich', () {
      final sandwich = Sandwich(
        type: SandwichType.veggieDelight,
        isFootlong: false,
        breadType: BreadType.white,
      );

      expect(sandwich.image, 'assets/images/veggieDelight_six_inch.png');
    });
  });
}