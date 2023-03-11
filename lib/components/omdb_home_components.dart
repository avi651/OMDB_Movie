import 'package:flutter/material.dart';
import '../models/omdb_model.dart';
import '../widgets/omdb_list_view_widget.dart';

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
