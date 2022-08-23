import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:search_app_freezed/data/model/photo.dart';
import 'package:search_app_freezed/ui/image_search_view_model.dart';
import '../debouncer.dart';

class ImageSearchScreen extends StatefulWidget {
  const ImageSearchScreen({Key? key}) : super(key: key);

  @override
  State<ImageSearchScreen> createState() => _ImageSearchScreenState();
}

class _ImageSearchScreenState extends State<ImageSearchScreen> {
  final _controller = TextEditingController();
  final _debouncer = Debouncer(milliseconds: 500);

  @override
  void initState() {
    Future.delayed(
      Duration.zero,
      (() {
        final viewModel = context.read<ImageSearchViewModel>();
        viewModel.fetchImages('');
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final viewModel = context.watch<ImageSearchViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '이미지 검색 앱',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 2,
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      viewModel.fetchImages(_controller.text);
                    },
                    child: const Icon(Icons.search),
                  ),
                  hintText: '검색어 입력'),
              onChanged: (value) {
                _debouncer.run(() => viewModel.fetchImages(_controller.text));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              '결과 :',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: viewModel.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            orientation == Orientation.portrait ? 2 : 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      children: viewModel.images.map(
                        (photo images) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              images.previewURL,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ).toList(),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
