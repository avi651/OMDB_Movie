import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_omdb/bloc/omdb_detail_cubit/omdb_detail_state.dart';
import '../bloc/omdb_detail_cubit/omdb_detial_cubit.dart';

class OMDBDetailScreen extends StatefulWidget {
  final String? omdbDetailMovieID;
  const OMDBDetailScreen({super.key, this.omdbDetailMovieID});

  @override
  State<OMDBDetailScreen> createState() => _OMDBDetailScreenState();
}

class _OMDBDetailScreenState extends State<OMDBDetailScreen> {

  late bool? isConnected = false;

  @override
  void initState() {
    _checkInternetConnection();
    super.initState();
  }

  Future<void> _checkInternetConnection() async {
    try {
      final response = await InternetAddress.lookup('www.google.com');
      if (response.isNotEmpty) {
        setState(() {
          isConnected = true;
          _fetchOMDBDetailData(widget.omdbDetailMovieID);
        });
      }
    } on SocketException catch (err) {
      setState(() {
        isConnected = false;
      });
      debugPrint(err.toString());
    }
  }

  Future _fetchOMDBDetailData(String? movieID) async {
    BlocProvider.of<OMDBDetailCubit>(context).fetchOMDBDetailData(movieID ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        title: SizedBox(
            width: MediaQuery.of(context).size.width/ 2,
            height: MediaQuery.of(context).size.height/ 4,
            child: Lottie.asset(
              "assets/logo.json",
            )),
      ),
      body: BlocBuilder<OMDBDetailCubit, OMDBDetailState>(
        builder: (context, state) {
          if(state is OMDBDetailStateInitial) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          if(state is OMDBDetailStateLoading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          if(state is OMDBDetailStateError) {
            return const Center(
              child: Text('Error Found'),
            );
          }
          if(state is OMDBDetailStateSuccess) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3,
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
                    imageUrl: state.omdbDetailModel.poster ?? "",
                    placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                    const Icon(Icons.error),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                RatingBarIndicator(
                  rating: 2.8,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 40.0,
                  direction: Axis.horizontal,
                ),

              ],
            );
          }
          return Container();
        }
      ),
    );
  }
}