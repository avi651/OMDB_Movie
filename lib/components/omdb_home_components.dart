import 'package:flutter/material.dart';
import 'package:movie_omdb/widgets/omdb_list_view_widget.dart';

import '../models/omdb_model.dart';

class OMDBHomeComponents extends StatelessWidget {
  final OMDBModel? omdbModel;
  final bool? isAccending;
  const OMDBHomeComponents(
      {super.key, required this.omdbModel, required this.isAccending});

  @override
  Widget build(BuildContext context) {
    return OMDBListViewWidget(
      omdbModel: omdbModel,
      isAccending: isAccending,
    );
  }
}
