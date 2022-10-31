import 'package:flutter/material.dart';


class GridviewCardWidget extends StatelessWidget {
  const GridviewCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        shrinkWrap: true,
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              InkWell(
                onTap: () {
                  // Get.to(() => ProductDetailsScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: const Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/shoes-wasatch-running-3.png',
                      ),
                      width: 150,
                      height: 100,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(Icons.delete_outline),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Duke Mens's  Shoes",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("₹2,279"),
                    Text("Extra 15% off applied  at checkout"),
                  ],
                ),
              )
            ],
          );
        });
  }
}
