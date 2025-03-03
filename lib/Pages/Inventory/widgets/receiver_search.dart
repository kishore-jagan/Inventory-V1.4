// ignore_for_file: must_be_immutable, overridden_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory/api_services/receiver_service.dart';

class ReceiverSearch extends StatefulWidget {
  final TextEditingController controller;
  @override
  final GlobalKey<ReceiverSearchState> key;

  const ReceiverSearch({required this.controller, required this.key})
      : super(key: key);

  @override
  State<ReceiverSearch> createState() => ReceiverSearchState();
}

class ReceiverSearchState extends State<ReceiverSearch> {
  final ReceiverController receiverController = Get.put(ReceiverController());

  @override
  void initState() {
    super.initState();
    receiverController.fetchReceivers();

    // Add listener to detect changes in the external controller
    widget.controller.addListener(() {
      if (mounted) {
        setState(() {
          receiverController.selectedReceiver.value = widget.controller.text;
        }); // Trigger rebuild when controller value changes
      }
    });
  }

  @override
  void dispose() {
    // Remove listener when the widget is disposed
    widget.controller.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          return const Iterable<String>.empty();
        }
        return receiverController.receiverList.where((name) =>
            name.toLowerCase().contains(textEditingValue.text.toLowerCase()));
      },
      onSelected: (String selectedReceiverName) {
        setState(() {
          widget.controller.text = selectedReceiverName;
        });
      },
      fieldViewBuilder: (BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback? onFieldSubmitted) {
        // Sync external controller with Autocomplete field
        textEditingController.value = widget.controller.value;

        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: TextFormField(
            controller: textEditingController,
            focusNode: focusNode,
            onChanged: (value) {
              widget.controller.text = value;
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.1))),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Colors.lightBlue),
              ),
            ),
          ),
        );
      },
      optionsViewBuilder: (BuildContext context,
          AutocompleteOnSelected<String> onSelected, Iterable<String> options) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Material(
                elevation: 4.0,
                child: SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8.0),
                    itemCount: options.length,
                    itemBuilder: (BuildContext context, int index) {
                      final String option = options.elementAt(index);
                      return InkWell(
                        onTap: () {
                          setState(() {
                            onSelected(option);
                            widget.controller.text = option;
                            print('final last: ${widget.controller.text}');
                          });
                        },
                        child: ListTile(
                          title: Text(option),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    widget.controller.clear();
                  });
                },
                icon: const Icon(Icons.cancel))
          ],
        );
      },
    );
  }
}
