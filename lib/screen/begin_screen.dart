import 'package:flutter/material.dart';

import '../model/products_model.dart';

class BeginScreen extends StatelessWidget {
  const BeginScreen({super.key});

  @override
  Widget build(BuildContext context) {



    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F6FF),
        drawer: const MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const TopBarSection(),
              const SizedBox(height: 12),
              const SearchBarSection(),
              const SizedBox(height: 20),
              const BrandListText(),
              const BrandListLogo(),
              const SizedBox(height: 20),


              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ProductImage(product: productList[index]),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




class ProductImage extends StatelessWidget {
  final Product product;

  const ProductImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: const Color(0xffe7f4ff),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(product.imagePath, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      product.price,
                      style: const TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ],
                ),
                // دکمه اضافه کردن
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: const Color(0xffe7f4ff),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.add, color: Colors.red),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class TopBarSection extends StatelessWidget {
  const TopBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: Colors.white,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ),
        Card(
          color: Colors.white,
          child: IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ),
      ],
    );
  }
}

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xffD2D2D2)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Color(0xff2D96FF), width: 2),
              ),
            ),
          ),
        ),
        Card(
          color: Colors.white,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tune),
          ),
        ),
      ],
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue.shade700),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 32, color: Colors.blue),
                  ),
                  SizedBox(width: 12),
                  Text("خوش آمدید ", style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text("خانه"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text("پروفایل"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text("تنظیمات"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("خروج"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}

class BrandListText extends StatelessWidget {
  const BrandListText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text("برندها", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
        Spacer(),
        Text("مشاهده همه", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 14)),
      ],
    );
  }
}

class BrandListLogo extends StatelessWidget {
  const BrandListLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 5,
        children: List.generate(7, (index) {
          return Container(width: 65, height: 65, color: Colors.red);
        }),
      ),
    );
  }
}
