import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/favorite_provider.dart';
import '../../theme/theme.dart';
import 'package:flutter_component_ui/ui_components/label/all_label/label1.dart';

class Label extends StatefulWidget {
  const Label({Key? key}) : super(key: key);

  @override
  State<Label> createState() => _LabelState();
}

class _LabelState extends State<Label> {
  bool isFavorite = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
            height: 10,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Align(
                    child: label(), // Use the Label1 widget from the label package
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 20,
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Add to favorite'),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                child: Icon(
                                  isFavorite ? Icons.star : Icons.star_border_outlined,
                                  color: Colors.amber,
                                ),
                                onTap: () {
                                  setState(() {
                                    isFavorite = !isFavorite;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}