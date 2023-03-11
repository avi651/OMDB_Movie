import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import '../bloc/omdb_detail_cubit/omdb_detail_state.dart';
import '../bloc/omdb_detail_cubit/omdb_detial_cubit.dart';
import '../components/omdb_detail_components.dart';
import '../widgets/omdb_no_internet_connection_widget.dart';

class OMDBDetailScreen extends StatefulWidget {
  final String? omdbDetailMovieID;
  final bool? isFav;
  const OMDBDetailScreen(
      {super.key, required this.omdbDetailMovieID, required this.isFav});

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
    BlocProvider.of<OMDBDetailCubit>(context)
        .fetchOMDBDetailData(movieID ?? "");
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
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 4,
            child: Lottie.asset(
              "assets/logo.json",
            )),
      ),
      body: isConnected == true
          ? BlocBuilder<OMDBDetailCubit, OMDBDetailState>(
              builder: (context, state) {
              if (state is OMDBDetailStateInitial) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
              if (state is OMDBDetailStateLoading) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
              if (state is OMDBDetailStateError) {
                return const Center(
                  child: Text('Error Found'),
                );
              }
              if (state is OMDBDetailStateSuccess) {
                return OMDBDetailComponents(
                  omdbModelDetail: state.omdbDetailModel,
                  omdbDetailMovieID: widget.omdbDetailMovieID,
                  isFav: widget.isFav,
                );
              }
              return Container();
            })
          : NoInternetConnectionWidget(
              onPressed: _checkInternetConnection,
            ),
    );
  }
}
