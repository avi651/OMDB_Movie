import 'package:flutter/material.dart';
import '../models/omdb_model.dart';
import 'omdb_grid_item_widget.dart';

class OMDBGridWidget extends StatefulWidget {
  final OMDBModel? omdbModel;
  List<bool>? tempArray = [];
  OMDBGridWidget({super.key, required this.omdbModel, this.tempArray});

  @override
  State<OMDBGridWidget> createState() => _OMDBGridWidgetState();
}

class _OMDBGridWidgetState extends State<OMDBGridWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    print('fav');
    print(widget.omdbModel!.search![0].isFav);
    return GridView.builder(
      padding: EdgeInsets.all(16),
      physics: const BouncingScrollPhysics(),
      itemCount: widget.omdbModel?.search!.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: (width * .13) / (height * .1),
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            print('Tapped');
            setState(() {
              print(widget.omdbModel!.search![index].isFav);
              if (widget.omdbModel!.search![index].isFav == false) {
                widget.omdbModel!.search![index].isFav = true;
              } else {
                widget.omdbModel!.search![index].isFav = false;
              }
            });
          },
          child: OMDBGridViewItem(
            image: widget.omdbModel!.search![index].poster ?? "",
            width: width,
            height: height,
            isFav: widget.omdbModel!.search![index].isFav,
          ),
        );
      },
    );
  }
}