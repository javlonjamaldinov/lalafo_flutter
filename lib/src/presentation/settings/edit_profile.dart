import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitegrColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Редактировать профиль',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildProfileHeader(),
            const SizedBox(height: 20),
            _buildContainer(
              child: _buildListTile(
                icon: Icons.email,
                title: 'Email',
                subtitle: 'j54772264@gmail.com',
                onTap: () {},
              ),
            ),
            _buildContainer(
              child: _buildListTile(
                icon: Icons.phone,
                title: 'Телефон',
                subtitle: '+996 123 456789',
                onTap: () {},
              ),
            ),
            _buildContainer(
              child: _buildListTile(
                icon: Icons.verified,
                title: 'Подтверждение через соцсети',
                subtitle: 'Подтвержден',
                trailing: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.facebook, color: Colors.blue),
                    SizedBox(width: 8),
                    Icon(Icons.apple, color: Colors.black),
                    SizedBox(width: 8),
                    Icon(Icons.mail, color: Colors.blue),
                    SizedBox(width: 8),
                    Icon(Icons.security, color: Colors.grey),
                  ],
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 20),
            _buildContainer(
              child: _buildListTile(
                icon: Icons.visibility,
                title: 'Просмотр профиля',
                subtitle: 'Так ваш профиль видят другие',
                onTap: () {},
              ),
            ),
            const SizedBox(height: 20),
            _buildContainer(
              child: _buildListTile(
                icon: Icons.link,
                title: 'Индивидуальная ссылка',
                onTap: () {},
              ),
            ),
            _buildContainer(
              child: _buildListTile(
                icon: Icons.link,
                title: 'Ссылки на соцсети',
                onTap: () {},
              ),
            ),
            _buildContainer(
              child: _buildListTile(
                icon: Icons.phone_in_talk,
                title: 'Дополнительный телефон',
                subtitle: 'Контакты, адрес',
                onTap: () {},
              ),
            ),
            _buildContainer(
              child: _buildListTile(
                icon: Icons.access_time,
                title: 'Время работы',
                onTap: () {},
              ),
            ),
            _buildContainer(
              child: _buildListTile(
                icon: Icons.business,
                title: 'Брендирование',
                onTap: () {},
              ),
            ),
            _buildContainer(
              child: _buildListTile(
                icon: Icons.photo_library,
                title: 'Фотогалерея',
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white,
      ),
      child: ListTile(
        leading: const CircleAvatar(
          radius: 24,
          backgroundColor: Colors.grey,
          child: Text(
            'J',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        title: const Text(
          'j54772264',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text('Фото профиля, имя, описание'),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.bluegreyColor,
          size: 15,
        ),
        onTap: () {
          // Navigation logic for editing profile details
        },
      ),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    String? subtitle,
    Widget? trailing,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.bluegreyColor,
      ),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: trailing ??
          const Icon(
            Icons.arrow_forward_ios,
            color: AppColors.bluegreyColor,
            size: 15,
          ),
      onTap: onTap,
    );
  }

  Widget _buildContainer({required Widget child}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 16.0),
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: child,
    );
  }
}
