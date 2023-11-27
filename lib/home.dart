import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/models/banners_model.dart';
import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/repositry/banners_repositry.dart';
import 'package:ecommerce/repositry/category_repositry.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int activeIndex = 0;
  final controller = CarouselController();

  List<String> imageAssets = [
    "assets/images/home.png",
    "assets/images/clothes2.png"
  ];

  final List<Catogry> listCatory = [
    Catogry(
      name: "Man Shirt",
      image: Image.asset("assets/images/clothes2.png"),
    ),
    Catogry(
      name: "Dress",
      image: Image.asset("assets/images/Group.png"),
    ),
    Catogry(
      name: "Man Work \n Equipment",
      image: Image.asset("assets/images/bag.png"),
    ),
    Catogry(
      name: "Woman Bag",
      image: Image.asset("assets/images/bag2.png"),
    ),
    Catogry(
      name: "Man Shoes",
      image: Icon(
        Icons.man_2_outlined,
        color: Color(0xff40BFFF),
      ),
    ),
    Catogry(
      name: "person",
      image: Icon(Icons.person),
    ),
  ];

  List<String> image = [
    "assets/images/shoes1.png",
    "assets/images/product2.png",
    "assets/images/product3.png",
  ];

  List<String> textImage = [
    "FS - Nike Air \n Max 270 React...",
    "FS - QUILTED \n MAXI CROS...",
    "FS - Nike Air \n Max 270 React...",
  ];

  List<String> image2 = [
    "assets/images/product4.png",
    "assets/images/product3.png",
    "assets/images/product4.png",
  ];

  List<String> image3 = [
    "assets/images/product6.png",
    "assets/images/product4.png",
  ];

  List<String> image4 = [
    "assets/images/product7.png",
    "assets/images/product8.png",
  ];

  Future<Category>? category;
  Future<BannersHome>? banners;
  @override
  void initState() {
    super.initState();
    category = CategoryRepository().getCategory();
    banners = Banners_Repositry().getBanners();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        setState(() {
          CategoryRepository().getCategory();
          Banners_Repositry().getBanners();
        });
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Search Product",
                labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9098B1),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Icon(Icons.search),
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          leadingWidth: 300,
          actions: [
            SizedBox(
              width: 16,
            ),
            Icon(
              Icons.favorite_outline,
              color: Color(0xff9098B1),
              size: 30,
            ),
            SizedBox(
              width: 16,
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Icon(
                  Icons.notifications_none_sharp,
                  color: Color(0xff9098B1),
                  size: 30,
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 16,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                FutureBuilder(
                  future: banners,
                  builder: (BuildContext context, AsyncSnapshot<BannersHome> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting){
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (snapshot.hasError){
                      return Center(
                          child: Text('There is an error try again!'));
                    }

                    if (snapshot.hasData){
                     final bannersModel = snapshot.data!.data!.banners;
                     return Column(
                       children: [
                         CarouselSlider.builder(
                            carouselController: controller,
                            itemCount: bannersModel!.length,
                            options: CarouselOptions(
                                autoPlay: true,
                                autoPlayCurve: Curves.bounceInOut,
                                height: 250,
                                viewportFraction: 1,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    activeIndex = index;
                                  });
                                }),
                            itemBuilder:
                                (BuildContext context, int index, int realIndex) {
                                  final  item = bannersModel[index];
                              return Container(
                                child: Image.network(
                                  item.image ?? '',
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                         const SizedBox(
                           height: 10,
                         ),
                         AnimatedSmoothIndicator(
                           activeIndex: activeIndex,
                           count: bannersModel!.length,
                           onDotClicked: (index) {
                             controller.animateToPage(index);
                           },
                           effect: ExpandingDotsEffect(
                             dotWidth: 20,
                             dotHeight: 20,
                             activeDotColor: Colors.orange,
                           ),
                         ),
                       ],
                     );
                    }

                    return Text('No Image');
                  }
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff223263)),
                    ),
                    Text(
                      "More Category",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff40BFFF)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: category,
                    builder: (BuildContext context,
                        AsyncSnapshot<Category> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 100.0,
                          child: Shimmer.fromColors(
                            baseColor: Colors.grey,
                            highlightColor: Colors.white,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: CircleAvatar(
                                        radius: 30,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        );
                      }
                      if (snapshot.hasData) {
                        final newsModel = snapshot.data!;
                        return Container(
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: newsModel.data!.data!.length,
                            itemBuilder: (context, index) {
                              final item = newsModel.data!.data![index];
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 12.0),
                                    child: CircleAvatar(
                                      radius: 31,
                                      backgroundColor: Color(0xffEBF0FF),
                                      child: CircleAvatar(
                                        radius: 29,
                                        backgroundColor: Colors.white,
                                        backgroundImage: NetworkImage(item.image ?? ''),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    item.name ?? 'No name ',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff9098B1)),
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      }
                      return Center(
                          child: Text('No Information'));
                    },
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Flash Sale",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xff223263)),
                    ),
                    Text(
                      "See More",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xff40BFFF)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                  future: banners,
                  builder: (BuildContext context, AsyncSnapshot<BannersHome> snapshot) {

                    if(snapshot.connectionState == ConnectionState.waiting){
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (snapshot.hasError){
                      return Center(
                          child: Text('There is an error try again!'));
                    }

                    if (snapshot.hasData){
                      final flashSaleModel = snapshot.data!.data!.products;
                      return Container(
                        height: 240,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: flashSaleModel!.length,
                          itemBuilder: (context, index) {
                             final item = flashSaleModel[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 238,
                                        width: 141,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Image.network(
                                              item.image ?? '',width: 120,height: 110,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            SizedBox(
                                              width: 120,
                                              child: Text(
                                                item.name ?? 'No name ',
                                                style:const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,overflow: TextOverflow.ellipsis,
                                                    color: Color(0xff223263)),
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                textDirection: TextDirection.rtl ,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              '${item.price}' ,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xff40BFFF)),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "${item.oldPrice}",
                                                  style: TextStyle(
                                                      decoration:
                                                      TextDecoration.lineThrough,
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 10,
                                                      color: Color(0xff9098B1)),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  "${item.discount}",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 10,
                                                      color: Color(0xffFB7181)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    }

                    return Text('No Information');
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mega Sale",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xff223263)),
                    ),
                    Text(
                      "See More",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xff40BFFF)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 240,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: image.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Stack(
                              children: [
                                Container(
                                  height: 238,
                                  width: 141,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(16)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "${image2[index]}",
                                      ),
                                      Text(
                                        "FS - Nike Air \n Max 270 React...",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff223263)),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "\$299,43",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff40BFFF)),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "\$534,33",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                color: Color(0xff3038B1)),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "24% Off",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 10,
                                                color: Color(0xffFB7181)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  "assets/images/product5.png",
                  fit: BoxFit.cover,
                  width: 400,
                  height: 201,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: image3.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 265,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0)
                                      .copyWith(top: 16),
                              child: SizedBox(
                                height: 265,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "${image3[index]}",
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Nike Air Max 270 \n React ENG.",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff223263)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 120,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          for (var i = 0; i < 4; i++)
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.grey,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "\$299,43",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff40BFFF)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\$534,33",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xff3038B1)),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "24% Off",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                              color: Color(0xffFB7181)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: image3.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 258,
                              width: 160,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius:
                                    BorderRadiusDirectional.circular(16),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "${image4[index]}",
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Nike Air Max 270 \n React ENG.",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff223263)),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 120,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        for (var i = 0; i < 4; i++)
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "\$299,43",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff40BFFF)),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\$534,33",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Color(0xff3038B1)),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "24% Off",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            color: Color(0xffFB7181)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Image.asset("assets/images/Tab Bar.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Catogry {
  String name;

  Widget image;

  Catogry({required this.name, required this.image});
}
