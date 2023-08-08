import 'package:flutter/material.dart';

class FilterInList extends StatefulWidget {
  const FilterInList({Key? key}) : super(key: key);

  @override
  State<FilterInList> createState() => _FilterInListState();
}

class _FilterInListState extends State<FilterInList> {
  String selectIndex = 'All';
  List<String> categoryList = ['nike', 'adidass', 'squchers'];
  List<Product> productList = [
    Product(title: 'nike', price: '12'),
    Product(title: 'nike', price: '13'),
    Product(title: 'nike', price: '12'),
    Product(title: 'nike', price: '12'),
    Product(title: 'nike', price: '12'),
    Product(title: 'adidass', price: '12'),
    Product(title: 'adidass', price: '12'),
    Product(title: 'squchers', price: '12'),
  ];
  List<Product>? listFilter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listFilter = productList;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            width: width,
            height: 100,
            child: ListView.builder(
              itemCount: categoryList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectIndex = categoryList[index];
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    margin: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Center(
                      child: Text(categoryList[index]),
                    ),
                  ),
                );
              },
            ),
          ),

          //
          Expanded(
              child: ListView.builder(
            itemCount: getFilteredItems().length,
            itemBuilder: (context, index) {
              // Product productFilter = getFilteredItems()[index];
              return Container(
                width: width,
                height: 40,
                margin: const EdgeInsets.all(5),
                color: Colors.deepPurpleAccent,
                child: Center(
                  child: Text(getFilteredItems()[index].title),
                ),
              );
            },
          )),
        ],
      )),
    );
  }

  List<Product> getFilteredItems() {
    if (selectIndex == 'All') {
      return productList;
    } else {
      return productList.where((item) => item.title == selectIndex).toList();
    }
  }

}



class Product {
  final String title;
  final String price;

  Product({required this.title, required this.price});
}
