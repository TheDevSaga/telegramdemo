import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Info',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 18),
          Text(
            '+91 8585858585',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 3),
          Text(
            'Mobile',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF757575),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Of Course... I am am out of my mind , It is dark and scary inside...',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 3),
          Text(
            'Bio',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF757575),
            ),
          ),
          SizedBox(height: 20),
          Text(
            '@Sagar_Arora',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 3),
          Text(
            'Username',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF757575),
            ),
          ),
          Divider(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'on',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ],
                ),
              ),
              Switch(value: true, onChanged: (value) {})
            ],
          )
        ],
      ),
    );
  }
}
