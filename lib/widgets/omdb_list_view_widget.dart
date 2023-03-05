import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_omdb/screens/omdb_detail_screen.dart';
import '../models/omdb_model.dart';

class OMDBListViewWidget extends StatelessWidget {
  final OMDBModel? omdbModel;
  final bool? isAccending;
  const OMDBListViewWidget({super.key, this.omdbModel, this.isAccending});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: omdbModel!.search?.length ?? 0,
        itemBuilder: (context, index) {
          isAccending == true ? omdbModel!.search?.sort((e1, e2) => e1.title!.compareTo(e2.title!)) : omdbModel!.search?.sort((e1, e2) => e1.year!.compareTo(e2.year!));
          return GestureDetector(
            onTap: (){
              Get.to(() =>  OMDBDetailScreen(omdbDetailMovieID: omdbModel!.search?[index].imdbID), transition: Transition.zoom, duration:  const Duration(milliseconds: 1));
            },
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/4,
                      margin: const EdgeInsets.only(left:8, right: 8),
                      child: CachedNetworkImage(
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        imageUrl: omdbModel!.search?[index].poster ?? "",
                        placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height/4,
                                child: Lottie.asset(
                                  "assets/no_image.json",
                                )), //Icon(Icons.error),
                      ),
                    ),
                    const Divider(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, right: 10.0, left: 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      color: Colors.blue.withOpacity(.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            omdbModel!.search?[index].title ?? "",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            omdbModel!.search?[index].year ?? "",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}