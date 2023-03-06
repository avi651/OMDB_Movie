import 'package:flutter/material.dart';

class OMDBSearchBar extends StatefulWidget {
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final String? hintText;
  const OMDBSearchBar({
    Key? key,
    required this.onChanged,
    required this.onSubmitted,
    this.hintText,
  }) : super(key: key);

  @override
  State<OMDBSearchBar> createState() => _OMDBSearchBarState();
}

class _OMDBSearchBarState extends State<OMDBSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
        ),
        autofocus: false,
        onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: const OutlineInputBorder(),
          prefixIcon: const Icon(Icons.search),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
