import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/gap.dart';
import 'package:flutter_boilerplate/components/upload_image.dart';
import 'package:flutter_boilerplate/variables/theme_data.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: mainThemeData(context),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _firstController = TextEditingController();
  TextEditingController _noteController = TextEditingController();
  late XFile? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {},
        ),
        title: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
            ),
            children: const [
              TextSpan(
                text: 'Chapter 1.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'Is invoice available and consistant to the IRF or booking?',
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_back),
          label: 'Previous',
          tooltip: 'Previous',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_forward),
          label: 'Next',
          tooltip: 'Next',
        ),
      ]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        primary: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            // first component
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('1 Seam strength check samples'),
                      leading: const Icon(Icons.check_circle_outline_rounded),
                      textColor: Theme.of(context).colorScheme.primary,
                      iconColor: Theme.of(context).colorScheme.primary,
                    ),
                    TextField(
                      controller: _firstController,
                      decoration: const InputDecoration(
                        labelText: 'Enter data...',
                      ),
                    )
                  ],
                ),
              ),
            ),

            // second component: checked
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ListTile(
                  title: const Text('Checked'),
                  trailing: Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
              ),
            ),

            // third component: image
            Card(
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Image',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    // upload image
                    UploadImage(
                      onChanged: (files) {
                        setState(() {
                          _image = files[0];
                        });
                      },
                    ),
                    const Gap(10),
                    const ExpansionTile(
                      title: Text('Category A'),
                      children: [
                        Text('asdasd'),
                        Text('asdasd'),
                        Text('asdasd'),
                      ],
                    ),
                    const Gap(10),
                    const ExpansionTile(
                      title: Text('Caption A'),
                      children: [
                        Text('asdasd'),
                        Text('asdasd'),
                        Text('asdasd'),
                      ],
                    ),
                    const Gap(10),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(
                          Size(double.maxFinite, 50),
                        ),
                      ),
                      child: const Text('Add Another Image'),
                    )
                  ],
                ),
              ),
            ),

            // fourth component: Defect Category
            const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Defect Category',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ExpansionTile(
                      title: Text('Category A'),
                      children: [
                        Text('asdasd'),
                        Text('asdasd'),
                        Text('asdasd'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // fifth component: Defect code
            const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Defect Code and defect name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ExpansionTile(
                      title: Text('Code'),
                      children: [
                        Text('asdasd'),
                        Text('asdasd'),
                        Text('asdasd'),
                      ],
                    ),
                    Gap(10),
                    ExpansionTile(
                      title: Text('Defect Name'),
                      children: [
                        Text('asdasd'),
                        Text('asdasd'),
                        Text('asdasd'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // sixth component: Defect Level
            const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Defect Level',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ExpansionTile(
                      title: Text('Level A'),
                      children: [
                        Text('asdasd'),
                        Text('asdasd'),
                        Text('asdasd'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Notes',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      controller: _noteController,
                      decoration: const InputDecoration(
                        labelText: 'Add a note...',
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
