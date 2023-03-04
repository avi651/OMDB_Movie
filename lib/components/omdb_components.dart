import 'package:flutter/material.dart';
import '../models/omdb_model.dart';
import '../widgets/omdb_grid_widget.dart';

class OMDBComponents extends StatelessWidget {
  final OMDBModel? omdbModel;
  const OMDBComponents({super.key, required this.omdbModel});
  @override
  Widget build(BuildContext context) {
    return OMDBGridWidget(omdbModel: omdbModel);
  }
}