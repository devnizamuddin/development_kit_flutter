import 'package:flutter/material.dart';

import '../../extensions/build_context.dart';

class MsSearchField extends StatefulWidget {
  final String? hintText;
  final TextEditingController fieldController;
  final void Function(String query) onChangedQuery;

  const MsSearchField({
    super.key,
    this.hintText,
    required this.onChangedQuery,
    required this.fieldController,
  });

  @override
  State<MsSearchField> createState() => _MsSearchFieldState();
}

class _MsSearchFieldState extends State<MsSearchField> {
  bool showClearOption = false;

  @override
  Widget build(BuildContext context) {
    showClearOption = widget.fieldController.text.trim().isNotEmpty;
    return TextField(
      onChanged: (value) {
        setState(() {
          widget.onChangedQuery(value);
        });
      },
      controller: widget.fieldController,
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: widget.hintText,
        hintStyle: context.bodyMedium,
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        suffixIcon: showClearOption
            ? IconButton(
                icon: const Icon(Icons.close),
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  setState(() {
                    widget.fieldController.clear();
                  });
                },
              )
            : const Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
