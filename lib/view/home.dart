import 'package:flutter/material.dart';
import 'package:foody/model.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            sliver: SliverToBoxAdapter(
              // ignore: sized_box_for_whitespace
              child: Container(
                height: 70,
                width: 180,
                child: Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Text(
                    'Find the best recipes for cooking',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20, right: 140),
            sliver: SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 30,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 2,
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(0, 3))
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20),
            sliver: SliverToBoxAdapter(
              child: AspectRatio(
                aspectRatio: 1.8,
                child: PageView.builder(
                  itemCount: foodyImage.length,
                  itemBuilder: ((context, index) => Image.asset(foodyImage[0])),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
