import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../config/theme/color.dart';
import '../../extensions/build_context.dart';
import '../../utils/log.dart';

class MsImagePicker extends StatefulWidget {
  final File? initialImage;
  final void Function(File? image) onImagePicked;
  final double size;

  const MsImagePicker({
    super.key,
    this.initialImage,
    required this.onImagePicked,
    this.size = 80,
  });

  @override
  State<MsImagePicker> createState() => _MsImagePickerState();
}

class _MsImagePickerState extends State<MsImagePicker> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _selectedImage = widget.initialImage;
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      /*
       * ---> 📝 Picking Image 
       */
      final pickedFile = await _picker.pickImage(source: source);
      if (pickedFile != null) {
        final imageFile = File(pickedFile.path);
        /*
         * ---> 📝 Crop & Compress picked image 
         */

        // final processedImage = await cropAndCompressUserImage(imageFile);

        /*
         * ---> 📝 Update placeholder Image with new image 
         */
        setState(() => _selectedImage = imageFile);
        widget.onImagePicked(imageFile);
      }
    } catch (e, stackTrace) {
      Log.error(error: e, stackTrace: stackTrace);
      widget.onImagePicked(null);
    }
  }

  void _showPickerOptions() {
    showModalBottomSheet(
      context: context,
      builder: (_) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: const Text('Take Photo'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Choose from Gallery'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = widget.size;

    return GestureDetector(
      onTap: _showPickerOptions,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: size,
            backgroundColor: context.primaryColor,
            backgroundImage: _selectedImage != null
                ? FileImage(_selectedImage!)
                : null,
            child: _selectedImage == null
                ? Icon(
                    Icons.person,
                    color: context.onPrimaryColor,
                    size: (widget.size + widget.size * .6),
                  )
                : null,
          ),
          Positioned(
            bottom: 4,
            right: 4,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.onPrimaryFixedVariant,
                border: Border.all(color: Colors.white, width: 2),
              ),
              padding: const EdgeInsets.all(6),
              child: const Icon(Icons.edit, size: 24, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
