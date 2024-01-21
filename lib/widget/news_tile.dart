import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children:[
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLLpmMoJrLrLaM53uZBillvyAE6EmoEfK8vA&usqp=CAU',
            height:120,
            width:double.infinity,
            fit:BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text('ommmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmnya',
          maxLines: 2,overflow:TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text('ommmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmnya',
          maxLines: 2,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
            fontSize: 14,
          ),
        ),


      ]
    );
  }
}
