import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/gap.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  final ImagePicker _picker = ImagePicker();
  final List<XFile> _imageList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          children: [
            GestureDetector(
              onTapUp: (details) {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text('Image'),
                          content: Container(
                            height: 300,
                            width: 300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: _imageList.isEmpty
                                    ? const NetworkImage(
                                        'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?q=65&auto=format&w=2270&ar=2:1&fit=crop',
                                      )
                                    : FileImage(
                                        File(_imageList[0].path),
                                      ) as ImageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ));
              },
              child: Container(
                height: 1500,
                constraints: const BoxConstraints(
                  maxHeight: 150,
                  maxWidth: double.maxFinite,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: _imageList.isEmpty
                        ? const NetworkImage(
                            'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?q=65&auto=format&w=2270&ar=2:1&fit=crop',
                          )
                        : FileImage(
                            File(_imageList[0].path),
                          ) as ImageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
                right: 5,
                bottom: 5,
                child: IconButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Theme.of(context).colorScheme.surface),
                  ),
                  icon: const Icon(Icons.delete),
                ))
          ],
        ),
        const Gap(10),
        DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(8),
          color: Theme.of(context).colorScheme.primary,
          child: ElevatedButton.icon(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(
                const Size(double.infinity, 50),
              ),
              backgroundColor:
                  const MaterialStatePropertyAll(Colors.transparent),
              foregroundColor: MaterialStatePropertyAll(
                  Theme.of(context).colorScheme.onSurface),
            ),
            onPressed: () {
              showBottomSheet(
                context: context,
                builder: (context) => Container(
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () async {
                              final XFile? image = await _picker.pickImage(
                                source: ImageSource.camera,
                              );
                              if (image != null) {
                                setState(() {
                                  _imageList.add(image);
                                });
                              }

                              Future(() => Navigator.pop(context));
                            },
                            icon: const Icon(
                              Icons.camera_alt,
                              color: Colors.black54,
                            ),
                          ),
                          const Text('Camera'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () async {
                              final XFile? image = await _picker.pickMedia(
                                  // source: ImageSource.gallery,
                                  );

                              if (image != null) {
                                setState(() {
                                  _imageList.add(image);
                                });
                              }

                              Future(() => Navigator.pop(context));
                            },
                            icon: const Icon(
                              Icons.photo,
                              color: Colors.black54,
                            ),
                          ),
                          const Text('Gallery'),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.add_photo_alternate,
              color: Colors.black54,
            ),
            label: const Text('Add or take pictures'),
          ),
        )
      ],
    );
  }
}
