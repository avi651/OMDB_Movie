import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../models/omdb_model.dart';

class OMDBListViewWidget extends StatelessWidget {
  final OMDBModel? omdbModel;
  const OMDBListViewWidget({super.key, this.omdbModel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: omdbModel!.search?.length ?? 0,
        itemBuilder: (context, index) {
          //var sortedItems = omdbModel!.search!.sort;
          //omdbModel!.search?.sort((e1, e2) => e1.year!.compareTo(e2.year!));
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
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
                      ),//omdbModel!.search?[index].poster ?? "",
                      imageUrl: omdbModel!.search?[index].poster ?? "",
                      placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                      const Icon(Icons.error),
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
          );
        }
    );
  }
}