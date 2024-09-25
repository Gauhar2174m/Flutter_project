import 'package:flutter/material.dart';

class Catlist extends StatelessWidget {
  const Catlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal:
              7), // yeh margine home me jaker size box ko container bnaker use deni h ager errore aaye
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
                height: 50,
                width: 100,
                fit: BoxFit.cover,
                "https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.black26, borderRadius: BorderRadius.circular(12)),
          ),
          Positioned(
            top: 15,
            left: 30,
            child: Text(
              'Car',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
