import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import '../models/omdb_model.dart';
import '../screens/omdb_detail_screen.dart';
import 'omdb_txt_widget.dart';

class OMDBListViewWidget extends StatefulWidget {
  final OMDBModel? omdbModel;
  final bool? isAccending;
  const OMDBListViewWidget(
      {super.key, required this.omdbModel, required this.isAccending});

  @override
  State<OMDBListViewWidget> createState() => _OMDBListViewWidgetState();
}

class _OMDBListViewWidgetState extends State<OMDBListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: const Key('omdbListViewKey'),
      itemCount: widget.omdbModel!.search?.length ?? 0,
      itemBuilder: (context, index) {
        widget.isAccending == true
            ? widget.omdbModel!.search
                ?.sort((e1, e2) => e1.title!.compareTo(e2.title!))
            : widget.omdbModel!.search
                ?.sort((e1, e2) => e1.year!.compareTo(e2.year!));
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        () => OMDBDetailScreen(
                          omdbDetailMovieID:
                              widget.omdbModel!.search?[index].imdbID,
                          isFav: widget.omdbModel!.search![index].isFav,
                        ),
                        transition: Transition.zoom,
                        duration: const Duration(milliseconds: 1),
                      );
                    },
                    child: CachedNetworkImage(
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      imageUrl: widget.omdbModel!.search?[index].poster ?? "",
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4,
                        child: Lottie.asset(
                          "assets/no_image.json",
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 16.0, right: 10.0, left: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  color: Colors.blue.withOpacity(.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OMDBTxtWidget(
                          title:  widget.omdbModel!.search?[index].title ?? "",
                          fontSize: 16,
                          txtColor: Colors.white,
                          fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      OMDBTxtWidget(
                        title:   widget.omdbModel!.search?[index].year ?? "",
                        fontSize: 14,
                        txtColor: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10.0,
              right: 16.0,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (widget.omdbModel!.search![index].isFav == false) {
                      widget.omdbModel!.search![index].isFav = true;
                    } else {
                      widget.omdbModel!.search![index].isFav = false;
                    }
                  });
                },
                child: Icon(Icons.favorite,
                    size: 30.0,
                    color: widget.omdbModel!.search![index].isFav == true
                        ? Colors.red
                        : Colors.grey),
              ), //Icon
            ),
          ],
        );
      },
    );
  }
}
