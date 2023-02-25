import 'package:flutter/material.dart';

abstract class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({super.key, required this.title});
}
