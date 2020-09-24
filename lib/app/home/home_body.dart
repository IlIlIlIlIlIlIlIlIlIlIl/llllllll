import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hey,",
            style: Theme.of(context).textTheme.headline1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Text(
                  """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eleifend nisl tincidunt, dapibus mi a, consectetur lorem. Curabitur consequat vulputate sem, vel sagittis justo congue eu. Duis a ex suscipit, faucibus mi id, imperdiet est. Nam sed euismod mi. Duis rhoncus, nisl sed dapibus ornare, felis mi dictum odio, id tincidunt odio felis in lacus. Nullam scelerisque, risus consectetur interdum lobortis, nibh justo varius erat, vitae aliquam risus quam quis ante.
                  
Ut ex elit, bibendum nec magna semper, ultricies elementum velit. Phasellus ultrices massa nec lorem rhoncus suscipit. Nam ex orci, congue laoreet mattis vel, vehicula vitae velit. Pellentesque et risus sed nibh elementum pellentesque. Etiam dictum massa ac purus cursus, et consequat elit fringilla. Nunc congue venenatis massa egestas varius. Ut sed ligula odio. Vestibulum eget vehicula urna. In venenatis metus sed libero tincidunt, vel aliquam quam vulputate. Integer finibus scelerisque imperdiet. Phasellus ornare eu libero at auctor.

Ut ex elit, bibendum nec magna semper, ultricies elementum velit. Phasellus ultrices massa nec lorem rhoncus suscipit. Nam ex orci, congue laoreet mattis vel, vehicula vitae velit. Pellentesque et risus sed nibh elementum pellentesque. Etiam dictum massa ac purus cursus, et consequat elit fringilla. Nunc congue venenatis massa egestas varius. Ut sed ligula odio. Vestibulum eget vehicula urna. In venenatis metus sed libero tincidunt, vel aliquam quam vulputate. Integer finibus scelerisque imperdiet. Phasellus ornare eu libero at auctor.

Ut ex elit, bibendum nec magna semper, ultricies elementum velit. Phasellus ultrices massa nec lorem rhoncus suscipit. Nam ex orci, congue laoreet mattis vel, vehicula vitae velit. Pellentesque et risus sed nibh elementum pellentesque. Etiam dictum massa ac purus cursus, et consequat elit fringilla. Nunc congue venenatis massa egestas varius. Ut sed ligula odio. Vestibulum eget vehicula urna. In venenatis metus sed libero tincidunt, vel aliquam quam vulputate. Integer finibus scelerisque imperdiet. Phasellus ornare eu libero at auctor.

Ut ex elit, bibendum nec magna semper, ultricies elementum velit. Phasellus ultrices massa nec lorem rhoncus suscipit. Nam ex orci, congue laoreet mattis vel, vehicula vitae velit. Pellentesque et risus sed nibh elementum pellentesque. Etiam dictum massa ac purus cursus, et consequat elit fringilla. Nunc congue venenatis massa egestas varius. Ut sed ligula odio. Vestibulum eget vehicula urna. In venenatis metus sed libero tincidunt, vel aliquam quam vulputate. Integer finibus scelerisque imperdiet. Phasellus ornare eu libero at auctor.

Donec sit amet dapibus augue. Vivamus eget eros ut velit tempus tincidunt. Vivamus rhoncus eros ut felis egestas, ut imperdiet mauris porta.

""",
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.black.withOpacity(0.60),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
