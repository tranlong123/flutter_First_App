import 'dart:io';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
import 'package:new_project/ui/screens/auth_screens/sign_up_screens/body/custom_bottom_sheet.dart';
// ignore: depend_on_referenced_packages
import 'package:permission_handler/permission_handler.dart';
import 'package:new_project/styles/dimensions.dart';

class AddAvatar extends StatefulWidget {
  final Function(XFile?) onImageSelected;

  const AddAvatar({super.key, required this.onImageSelected});

  @override
  AddAvatarState createState() => AddAvatarState();
}

class AddAvatarState extends State<AddAvatar> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  Future<void> _pickImage(ImageSource source) async {
    final status = await _requestPermission(source);
    if (status == PermissionStatus.granted) {
      final XFile? pickedImage = await _picker.pickImage(source: source);
      if (pickedImage != null) {
        setState(() {
          _image = pickedImage;
          widget.onImageSelected(_image); // Call the callback function
        });
      }
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Permission denied')),
      );
    }
  }

  Future<PermissionStatus> _requestPermission(ImageSource source) async {
    Permission permission;
    if (source == ImageSource.camera) {
      permission = Permission.camera;
    } else {
      permission = Permission.photos;
    }

    final status = await permission.status;
    if (!status.isGranted) {
      final result = await permission.request();
      return result;
    }
    return status;
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return CustomBottomSheet(
          onGalleryTap: () {
            Navigator.pop(context);
            _pickImage(ImageSource.gallery);
          },
          onCameraTap: () {
            Navigator.pop(context);
            _pickImage(ImageSource.camera);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    AppDimensions.init(context);

    return GestureDetector(
      onTap: _showBottomSheet,
      child: _image == null
          ? Image.asset(
              'assets/png/Add-Image.png',
              width: AppDimensions.addImageSize,
              height: AppDimensions.addImageSize,
            )
          : Container(
              width: AppDimensions.addImageSize,
              height: AppDimensions.addImageSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: const Color(0xFFFFB900),
                  width: 2,
                ),
                image: DecorationImage(
                  image: FileImage(File(_image!.path)),
                  fit: BoxFit.cover,
                ),
              ),
            ),
    );
  }
}
