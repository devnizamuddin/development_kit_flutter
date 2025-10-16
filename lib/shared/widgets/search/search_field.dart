import 'package:flutter/material.dart';

import '../../extensions/build_context.dart';

class AppSearchField extends StatefulWidget {
  final String? hintText;
  final TextEditingController fieldController;
  final void Function(String query) onChangedQuery;
  final void Function(String)? onSubmitted;
  final bool autofocus;
  final TextInputAction textInputAction;
  final double borderRadius;
  final Color? fillColor;
  final Widget? prefixIcon;

  const AppSearchField({
    super.key,
    this.hintText,
    required this.onChangedQuery,
    required this.fieldController,
    this.onSubmitted,
    this.autofocus = false,
    this.textInputAction = TextInputAction.search,
    this.borderRadius = 12.0,
    this.fillColor,
    this.prefixIcon,
  });

  @override
  State<AppSearchField> createState() => _AppSearchFieldState();
}

class _AppSearchFieldState extends State<AppSearchField> {
  bool showClearOption = false;

  @override
  void initState() {
    super.initState();
    widget.fieldController.addListener(_updateShowClearOption);
    _updateShowClearOption();
  }

  @override
  void didUpdateWidget(covariant AppSearchField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.fieldController != widget.fieldController) {
      oldWidget.fieldController.removeListener(_updateShowClearOption);
      widget.fieldController.addListener(_updateShowClearOption);
      _updateShowClearOption();
    }
  }

  @override
  void dispose() {
    widget.fieldController.removeListener(_updateShowClearOption);
    super.dispose();
  }

  void _updateShowClearOption() {
    final hasText = widget.fieldController.text.trim().isNotEmpty;
    if (hasText != showClearOption) {
      setState(() {
        showClearOption = hasText;
      });
    }
  }

  void _clear() {
    widget.fieldController.clear();
    widget.onChangedQuery('');
    // optionally remove focus after clearing
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.fieldController,
      onChanged: (value) => widget.onChangedQuery(value),
      onSubmitted: widget.onSubmitted,
      autofocus: widget.autofocus,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.fillColor ?? Colors.white,
        hintText: widget.hintText,
        hintStyle: context.bodyMedium,
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        prefixIcon: widget.prefixIcon,
        suffixIcon: showClearOption
            ? IconButton(
                icon: const Icon(Icons.close),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(minWidth: 24, minHeight: 24),
                onPressed: _clear,
              )
            : const Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Icon(Icons.search),
              ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
      ),
    );
  }
}
