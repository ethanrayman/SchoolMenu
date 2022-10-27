class MenuDay {
  String day;
  String imageUrl;
  List<String> options;

  MenuDay(this.day, this.imageUrl, this.options);

  static List<MenuDay> meals = [
    MenuDay('Monday', 'assets/aa11bb22.jpg', [
      'Zucchini Carrot Breakfast Bread',
      'New York Yogurt Choice',
      'Hot Oatmeal',
      'Seasonal Fresh Fruit',
    ]),
    MenuDay('Tuesday', 'assets/cc33dd44.jpg', [
      'Mini Blueberry Waffles',
      'Fresh Plums',
    ]),
    MenuDay('Wednesday', 'assets/ee55ff66.jpg', [
      'Banana Muffin',
      'Mozzarella Cheese Stick',
      'Fresh Oranges',
    ]),
    MenuDay('Thursday', 'assets/gg77hh88.jpg', [
      'Buttermilk Pancakes',
      'Turkey Sausage',
      'Fresh Apples',
    ]),
    MenuDay('Friday', 'assets/ii99jj00.jpg', [
      'Assorted Fresh Bagels',
      'Fresh Pears',
    ]),
  ];
}
