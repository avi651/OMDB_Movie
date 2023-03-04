import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_omdb/widgets/omdb_list_view_widget.dart';
import '../bloc/omdb_cubit.dart';
import '../bloc/omdb_state.dart';
import '../components/omdb_components.dart';
import '../widgets/emdb_search_bar.dart';

class OMDBHomeScreen extends StatefulWidget {
  const OMDBHomeScreen({super.key});

  @override
  State<OMDBHomeScreen> createState() => _OMDBHomeScreenState();
}

class _OMDBHomeScreenState extends State<OMDBHomeScreen> {

  String? searchStr = "Spiderman";
  late bool? isConnected = false;

  Future<void> _checkInternetConnection() async {
    try {
      final response = await InternetAddress.lookup('www.google.com');
      if (response.isNotEmpty) {
        setState(() {
          isConnected = true;
          _fetchOMDBData(searchStr ?? "Spiderman");
        });
      }
    } on SocketException catch (err) {
      setState(() {
        isConnected = false;
      });
      debugPrint(err.toString());
    }
  }


  @override
  void initState() {
    _checkInternetConnection();
    super.initState();
  }

  Future _fetchOMDBData(String searchStr) async {
    BlocProvider.of<OMDBCubit>(context).fetchOMDBData(searchStr ?? "Batman");
  }

  @override
  Widget build(BuildContext context) {
    bool _isGrid = false;
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: SizedBox(
            width: MediaQuery.of(context).size.width/ 2,
            height: MediaQuery.of(context).size.height/ 4,
            child: Lottie.asset(
              "assets/logo.json",
            )),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _isGrid = !_isGrid;
                });
              },
              icon: Icon(
                _isGrid ? Icons.list : Icons.grid_view,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: OMDBSearchBar(
              hintText: 'Search Movies...',
              onSubmitted: (searchMovies){
                BlocProvider.of<OMDBCubit>(context).fetchOMDBData(searchMovies);
              },
              onChanged: (searchMovies) {

              },
            ),
          ),
          isConnected == true ?  BlocBuilder<OMDBCubit, OMDBState>(
            builder: (context, state) {
              if(state is OMDBStateInitial) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
              if(state is OMDBStateLoading) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
              if(state is OMDBStateError) {
                return const Center(
                  child: Text('Error'),
                );
              }
              if(state is OMDBStateSuccess) {
                return Expanded(child: OMDBListViewWidget(omdbModel: state.omdbModel)); //OMDBComponents(omdbModel: state.omdbModel);
              }
              return Container();
            },
          ) : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                const Text('Not able to connect internet'),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Raised Button'),
                  onPressed: () {
                    _checkInternetConnection();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}