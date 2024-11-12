import 'package:flutter/material.dart';
import 'package:tap2024b/network/api_popular.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {

  ApiPopular apiPopular = ApiPopular();

  @override
  Widget build(BuildContext context) {
    apiPopular.getAllPopular();
    return Container();
  }
}