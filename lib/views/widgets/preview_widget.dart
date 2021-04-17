import 'package:diva_roulette/theme.dart';
import 'package:flutter/material.dart';

class PreviewWidget extends StatelessWidget {
  final List<String> phaseWord;

  const PreviewWidget({Key key, @required this.phaseWord}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Preview',
          style: TextStyle(color: Colors.grey),
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 24,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 3 / 1,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
              ),
              padding: EdgeInsets.all(4),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${index + 1}.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(
                      color: AppTheme.purple,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        phaseWord.length > index
                            ? "${phaseWord[index]}"
                            : "",
                        style:
                        TextStyle(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
