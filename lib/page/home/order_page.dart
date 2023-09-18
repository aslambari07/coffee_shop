// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, unused_local_variable, unused_field

import 'package:coffee_shop/style/app_style.dart';
import 'package:flutter/material.dart';

class OrderMenu extends StatefulWidget {
  //
  // final String image;
  // final String name;

  const OrderMenu({
    Key? key,
    // required this.image,
    // required this.name,
  }) : super(key: key);
//
  @override
  _OrderMenuState createState() => _OrderMenuState();
}

class _OrderMenuState extends State<OrderMenu> {
  bool isDeliverSelected = true;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Order',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 48.0),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isDeliverSelected = true;
                      });
                    },
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: isDeliverSelected
                            ? kbuttonColor
                            : Color.fromARGB(255, 199, 199, 199),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Center(
                        child: Text(
                          "Deliver",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isDeliverSelected = false;
                      });
                    },
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: isDeliverSelected
                            ? Color.fromARGB(255, 199, 199, 199)
                            : kbuttonColor,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Center(
                        child: Text(
                          "Pick Up",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 31),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Delivery Address",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  "Jl. Kpg Sutoyo",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9B9B9B),
                  ),
                ),
                SizedBox(height: 12),

                //user pemesanan
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditAddressPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(0xFF303336),
                        backgroundColor: kWhiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFDEDEDE)),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.edit,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          Text('Edit Address'),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddNotePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(0xFF303336),
                        backgroundColor: kWhiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFDEDEDE)),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.note_add,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          Text('Add Note'),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 390,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFEAEAEA),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                //isi di sini
                Row(
                  children: [
                    // yang benar
                    // Image.asset(
                    //   widget.image,
                    //   width: 54,
                    //   height: 54,
                    // ),
                    // sementara
                    Image.asset(
                      'assets/images/Rectangle 1706.png',
                      width: 54,
                      height: 54,
                    ),

                    SizedBox(width: 11),
                    // Text(
                    //   widget.name,
                    //   style: TextStyle(
                    //     color: Color(0xFF2F2D2C),
                    //     fontSize: 16,
                    //     fontFamily: 'Sora',
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),
                    SizedBox(width: 42),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (count > 0) {
                                count--;
                              }
                            });
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            padding: const EdgeInsets.all(6),
                            margin: const EdgeInsets.all(13),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEAEAEA),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '-',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          '$count',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count++;
                            });
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            padding: const EdgeInsets.all(6),
                            margin: const EdgeInsets.all(13),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1.0,
                                  color: Color(0xFFEAEAEA),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '+',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 21),
                Container(
                  width: 375,
                  height: 4,
                  decoration: BoxDecoration(color: Color(0xFFF4F4F4)),
                ),
                SizedBox(height: 15),

                //KUPON
                Builder(builder: (context) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: 315,
                      height: 56,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            color: Color(0xFFEAEAEA),
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Image.asset('assets/images/Discount.png'),
                          ),
                          SizedBox(width: 15),
                          Text(
                            '1 Discount is applied',
                            style: TextStyle(
                              color: Color(0xFF2E2D2C),
                              fontSize: 14,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 100),
                          Transform.scale(
                            scale: -1.0,
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFF2E2D2C),
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
                SizedBox(height: 21),

                //HARGA
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Payment Summary',
                          style: TextStyle(
                            color: Color(0xFF2E2D2C),
                            fontSize: 16,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 9),
                    Row(
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            color: Color(0xFF2E2D2C),
                            fontSize: 14,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 8),
                        // Text(
                        //   '\$ $price',
                        //   style: TextStyle(
                        //     color: kbuttonColor,
                        //     fontSize: 18,
                        //     fontFamily: 'Sora',
                        //     fontWeight: FontWeight.w600,
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Row(
                      children: [
                        Text(
                          'Delivery Fee',
                          style: TextStyle(
                            color: Color(0xFF2E2D2C),
                            fontSize: 14,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 8),
                        // Text(
                        //   '\$ $price',
                        //   style: TextStyle(
                        //     color: kbuttonColor,
                        //     fontSize: 18,
                        //     fontFamily: 'Sora',
                        //     fontWeight: FontWeight.w600,
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(height: 21),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: 390,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFEAEAEA),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Row(
                      children: [
                        Text(
                          'Total Payment',
                          style: TextStyle(
                            color: Color(0xFF2E2D2C),
                            fontSize: 14,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 8),
                        // Text(
                        //   '\$ $price',
                        //   style: TextStyle(
                        //     color: kbuttonColor,
                        //     fontSize: 18,
                        //     fontFamily: 'Sora',
                        //     fontWeight: FontWeight.w600,
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NavOrder extends StatelessWidget {
  const NavOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0),
      child: Container(
        width: 470,
        height: 200,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: const Color(0xFFF9F9F9),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          border: Border.all(width: 0.50, color: const Color(0xFFF1F1F1)),
        ),
        child: Stack(
          children: [
            Container(
              width: 475,
              height: 240,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                border: Border.all(width: 0.50, color: const Color(0xFFF1F1F1)),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 106,
                    child: SizedBox(
                      width: 375,
                      height: 34,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: SizedBox(width: 375, height: 34),
                          ),
                          Positioned(
                            left: 121,
                            top: 19,
                            child: Container(
                              width: 134,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(2.50),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 1,
                    child: Container(
                      padding: const EdgeInsets.only(right: 14),
                      decoration: BoxDecoration(
                        // color: const Color(0xFFF6F6F6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 1.71,
                                        top: 3.52,
                                        child: SizedBox(
                                          width: 20.59,
                                          height: 16.95,
                                          child: Image.asset(
                                            'assets/images/money.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 22),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: const Color(0xFFC67C4E),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cash',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Sora',
                                    fontWeight: FontWeight.w400,
                                    height: 1.17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '\$ 5.53',
                            style: TextStyle(
                              color: const Color(0xFF2F2D2C),
                              fontSize: 12,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w400,
                              height: 1.17,
                            ),
                          ),
                          const SizedBox(width: 137),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/dots.png',
                              width: 24,
                              height: 24,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: (375 - 300) / 2,
                    top: 56,
                    child: Container(
                      width: 315,
                      height: 60,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 109, vertical: 21),
                      decoration: BoxDecoration(
                        color: const Color(0xFFC67C4E),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Order',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 315,
                    top: 20,
                    child: Container(
                      width: 24,
                      height: 24,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: []),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 16,
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 1.71,
                                  top: 3.52,
                                  child: SizedBox(
                                    width: 20.59,
                                    height: 16.95,
                                    child: Stack(children: []),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ANDRES

class EditAddressPage extends StatefulWidget {
  const EditAddressPage({super.key});

  @override
  _EditAddressPageState createState() => _EditAddressPageState();
}

class _EditAddressPageState extends State<EditAddressPage> {
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _houseNumberController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  String _selectedRegion = 'Indonesia';
  List<String> regions = ['Indonesia', 'Malaysia', 'England'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambahkan alamat baru'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Informasi Kontak:'),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextFormField(
              controller: _phoneNumberController,
              decoration: InputDecoration(labelText: 'Nomor Telepon'),
            ),
            SizedBox(height: 16),
            Text('Informasi Alamat:'),
            DropdownButton<String>(
              value: _selectedRegion,
              onChanged: (newValue) {
                setState(() {
                  _selectedRegion = newValue!;
                });
              },
              items: regions.map((region) {
                return DropdownMenuItem<String>(
                  value: region,
                  child: Text(region),
                );
              }).toList(),
            ),
            TextFormField(
              controller: _houseNumberController,
              decoration: InputDecoration(labelText: 'Wilayah'),
            ),
            TextFormField(
              controller: _cityController,
              decoration:
                  InputDecoration(labelText: 'Masukkan informasi alamat'),
            ),
            TextFormField(
              controller: _postalCodeController,
              decoration: InputDecoration(labelText: 'Postal Code'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Simpan perubahan alamat di sini
                String name = _nameController.text;
                String phoneNumber = _phoneNumberController.text;
                String houseNumber = _houseNumberController.text;
                String city = _cityController.text;
                String postalCode = _postalCodeController.text;
                String region = _selectedRegion;
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.center,
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// NOTEimport 'package:flutter/material.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({Key? key}) : super(key: key);

  @override
  _AddNotePageState createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  final TextEditingController _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color(0xFFEAEAEA),
            height: 65.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Add Note',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 48.0),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                TextFormField(
                  controller: _noteController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Note',
                    hintText: 'Tambahkan catatan tambahan...',
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    String noteText = _noteController.text;
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kbuttonColor,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderPage extends StatelessWidget {
  static const String routeName = '/order-page';
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    //
    // final Map<String, dynamic> arguments =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    // final String image = arguments['image'];
    // final String name = arguments['name'];

    //
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            height: 710,
            left: 0,
            right: 0,
            child: OrderMenu(
                // image: image,
                // name: name,
                ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 110,
            child: NavOrder(),
          )
        ],
      ),
    );
  }
}
