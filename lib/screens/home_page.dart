import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/blog_view.dart';
import '../maps/blog_info.dart';
import 'blog_configure.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: const Icon(
                    Icons.notifications,
                  )),
                  Container(
                      child: const Text(
                    "Articles",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/avatar.jpg"))),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                // onChanged: (value) => _runFilter(value),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffeef8ff),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10),
                  hintText: "Search",
                  hintStyle: const TextStyle(
                      color: Color(0xff359cdd),
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Color(0xff359cdd),
                  ),
                  // prefix: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 0.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    indicatorColor: const Color(0xff359cdd),
                    labelPadding: const EdgeInsets.only(left: 10, right: 20),
                    controller: _tabController,
                    labelColor: Colors.black54,
                    unselectedLabelColor: Colors.grey.withOpacity(0.5),
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: const [
                      Tab(text: "General"),
                      Tab(text: "Mobile Application"),
                      Tab(text: "Cloud Technology"),
                      Tab(text: "Web Application",)
                    ],
                  ),
                ),
              ),
              //BLOG LIST
              Container(
                padding: const EdgeInsets.only(top: 20),
                height: 380,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    //GENERAL BLOGS
                    ListView.builder(
                        itemCount: 1,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: blogInfo.map((singleBlog) => BlogConfigure(blog: singleBlog,)).toList(),
                          );
                        }),
                    //MOBILE APP BLOGS
                    ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 200,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffeef8ff),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width:100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/avatar.jpg"))
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                    //CLOUD BLOGS
                    ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 200,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffeef8ff),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width:100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/avatar.jpg"))
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                    //WEB APP BLOGS
                    ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 200,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffeef8ff),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width:100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/avatar.jpg"))
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
