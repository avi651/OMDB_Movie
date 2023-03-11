import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lottie/lottie.dart';
import '../models/omdb_detail_model.dart';
import '../widgets/omdb_txt_widget.dart';

class OMDBDetailComponents extends StatelessWidget {
  final OMDBModelDetail? omdbModelDetail;
  final String? omdbDetailMovieID;
  late double? imdbRating;
  final bool? isFav;
  OMDBDetailComponents(
      {super.key,
      required this.omdbModelDetail,
      required this.omdbDetailMovieID,
      this.isFav,
      this.imdbRating});

  @override
  Widget build(BuildContext context) {
    if (omdbModelDetail?.imdbRating == 'N/A') {
      imdbRating = double.parse("0.0");
    } else {
      imdbRating = double.parse(omdbModelDetail?.imdbRating ?? "0.0");
    }
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            margin: const EdgeInsets.only(left: 8, right: 8),
            child: CachedNetworkImage(
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              imageUrl: omdbModelDetail?.poster ?? "",
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: Lottie.asset(
                  "assets/no_image.json",
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OMDBTxtWidget(
                  title: omdbModelDetail?.title ?? "",
                  fontSize: 20,
                  txtColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBarIndicator(
                      rating: imdbRating ?? 0.0, // 2.8,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 10,
                      itemSize: 25.0,
                      direction: Axis.horizontal,
                    ),
                    Icon(Icons.favorite,
                        size: 30.0,
                        color: isFav == true ? Colors.red : Colors.grey),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                OMDBTxtWidget(
                  title: omdbModelDetail?.actors ?? "",
                  fontSize: 16,
                  txtColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 16,
                ),
                OMDBTxtWidget(
                  title: omdbModelDetail?.plot ?? "",
                  fontSize: 14,
                  txtColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OMDBTxtWidget(
                      title: omdbModelDetail?.released ?? "",
                      fontSize: 14,
                      txtColor: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    OMDBTxtWidget(
                      title: omdbModelDetail?.genre ?? "",
                      fontSize: 14,
                      txtColor: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OMDBTxtWidget(
                      title: omdbModelDetail?.runtime ?? "",
                      fontSize: 14,
                      txtColor: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    OMDBTxtWidget(
                      title: omdbModelDetail?.language ?? "",
                      fontSize: 14,
                      txtColor: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                OMDBTxtWidget(
                  title: omdbModelDetail?.country ?? "",
                  fontSize: 14,
                  txtColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 16,
                ),
                OMDBTxtWidget(
                  title: omdbModelDetail?.awards ?? "",
                  fontSize: 14,
                  txtColor: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
