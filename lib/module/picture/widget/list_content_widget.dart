import 'package:flutter/material.dart';
import 'package:mini_project/shared/widget/loading_widget.dart';

class ListContentWidget extends StatelessWidget {
  final String? imageUrl;
  final String? author;
  final VoidCallback? onTap;
  final bool isLoading;

  const ListContentWidget({
    Key? key,
    this.imageUrl,
    this.author,
    this.onTap,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
        ),
        child: isLoading
            ? const SizedBox(
                height: 200,
                child: Center(child: Loading()),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    child: Image.network(
                      imageUrl!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 220,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'by: $author',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w300,
                            color: const Color(0xFF686868),
                            fontSize: 14,
                          ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
