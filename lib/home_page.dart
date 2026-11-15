import 'package:flutter/material.dart';
import 'package:whats_app/core/theme/app_colors.dart';

import 'core/gen/assets.gen.dart';
import 'core/widgets/custom_bubble_chat.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.green,
        leading: Transform.scale(scale: 0.4, child: Assets.icons.vector.svg()),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: Assets.images.profileImage.provider(),
            ),
            SizedBox(width: 10),
            Text(
              "John Safwat",
              style: TextStyle(
                fontSize: 17,
                color: AppColors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        actions: [
          Transform.scale(scale: 0.4, child: Assets.icons.icPhone.svg()),
          Transform.scale(scale: 0.4, child: Assets.icons.icVideo.svg()),
          Transform.scale(scale: 0.4, child: Assets.icons.icMenu.svg()),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              CustomBubbleChat(
                text: "Hello",
                topLeftBorder: 0,
                topRightBorder: 16,
                BottomLeftBorder: 16,
                BottomRightBorder: 16,
                containerColor: AppColors.green,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomBubbleChat(
                    text: "Hello!",
                    topLeftBorder: 16,
                    topRightBorder: 0,
                    BottomLeftBorder: 16,
                    BottomRightBorder: 16,
                    containerColor: AppColors.black,
                  ),
                ],
              ),
              SizedBox(height: 16),
              CustomBubbleChat(
                topLeftBorder: 0,
                topRightBorder: 16,
                BottomLeftBorder: 16,
                BottomRightBorder: 16,
                text:
                    "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
                containerColor: AppColors.green,
              ),
              SizedBox(height: 16),
              CustomBubbleChat(
                topLeftBorder: 0,
                topRightBorder: 16,
                BottomLeftBorder: 16,
                BottomRightBorder: 16,
                text: "what a Great Content To learn Flutter",
                containerColor: AppColors.green,
                image: Assets.images.route.provider(),
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomBubbleChat(
                    topLeftBorder: 16,
                    topRightBorder: 0,
                    BottomLeftBorder: 16,
                    BottomRightBorder: 16,
                    text: "what a Great Content To learn Flutter",
                    containerColor: AppColors.black,
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.camera_alt_outlined,color: AppColors.white,),
                        hintText: "Type a Message ...",
                        hintStyle: TextStyle(color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w500),
                        suffixIcon: Transform.scale(scale:0.6 ,child: Assets.icons.icSend.svg(width: 24,height: 24)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(39),
                          borderSide: BorderSide(color: AppColors.green),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(39),
                          borderSide: BorderSide(color: AppColors.green),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.green
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mic,color: AppColors.white,),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
