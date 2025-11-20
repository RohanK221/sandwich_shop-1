class PricingRepository {
  static const double sixInchPrice = 5.0;
  static const double footlongPrice = 8.0;

  double getPrice({required bool isFootlong, required int quantity}) {
    double basePrice = isFootlong ? footlongPrice : sixInchPrice;
    return basePrice * quantity;
  }
}