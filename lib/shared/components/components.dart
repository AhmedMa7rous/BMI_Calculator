import 'package:flutter/material.dart';

Widget OperationButton({
  bool isMiniButton = true,
  required String heroTag,
  required Icon icon,
  required VoidCallback completion,
}) => FloatingActionButton(
  backgroundColor: Colors.grey.shade800,
  mini: isMiniButton,
  heroTag: heroTag,
  onPressed: completion,
  child: icon,
);