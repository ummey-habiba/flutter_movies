import 'package:flutter/material.dart';

class PhotoGallery extends StatefulWidget {
  const PhotoGallery({super.key});

  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  final photoList = [
    'assets/images/inception.jpg',
    'assets/images/parasite.jpg',
    'assets/images/pulp fiction.jpg',
    'assets/images/the dark knight.jpg',
    'assets/images/the godfather.jpg',
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          DisplayText(label: 'Showing ${index + 1}/${photoList.length}'),
          Expanded(
            child: ImageSection(path: photoList[index]),
          ),
          ButtonSection(
              isPrevButtonEnabled: index > 0,
              isNextButtonEnabled: index < photoList.length-1,
              onPrevButtonClicked: (){
                setState(() {
                  index --;
                });
              },
              onNextButtonClicked: (){
                setState(() {
                  index ++;
                });
              })
        ],
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      elevation: 6.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          path,
          width: 350.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class DisplayText extends StatelessWidget {
  const DisplayText({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(fontSize: 20.0),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection(
      {super.key,
      required this.isPrevButtonEnabled,
      required this.isNextButtonEnabled,
      required this.onPrevButtonClicked,
      required this.onNextButtonClicked});

  final bool isPrevButtonEnabled;
  final bool isNextButtonEnabled;
  final VoidCallback onPrevButtonClicked;
  final VoidCallback onNextButtonClicked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey.shade900,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0))),
                onPressed: isPrevButtonEnabled ? onPrevButtonClicked : null,
                child: Text('PREVIOUS')),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey.shade900,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0))),
                onPressed: isNextButtonEnabled ? onNextButtonClicked : null,
                child: Text('NEXT')),
          )
        ],
      ),
    );
  }
}
