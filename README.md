# Shopo - Multivendor Ecommerce Flutter App

A comprehensive multivendor ecommerce solution with Flutter mobile app, Next.js frontend, and Laravel backend.

## 🏗️ Project Structure

This project consists of three main components:

### 📱 Mobile App (Flutter)
- **Location**: `User app/version 5.0.0/shopo-ecommerce/`
- **Platform**: Flutter/Dart
- **Features**: Customer-facing mobile application

### 🌐 Frontend (Next.js)
- **Location**: `shopo-frontend/`
- **Framework**: Next.js with React
- **Features**: Web-based customer interface

### ⚙️ Backend (Laravel)
- **Location**: `admin/Script/main_files/`
- **Framework**: Laravel PHP
- **Features**: Admin panel and API endpoints

### 📚 Documentation
- **Location**: `documentation/`
- **Content**: Project documentation and setup guides

## 🚀 Quick Start

### Prerequisites
- Node.js (v14 or higher)
- PHP (v8.0 or higher)
- Composer
- Flutter SDK
- MySQL/PostgreSQL database

### Frontend Setup (Next.js)

```bash
cd shopo-frontend
npm install
npm run dev
```

### Backend Setup (Laravel)

```bash
cd admin/Script/main_files
composer install
cp .env.example .env
# Configure your database settings in .env
php artisan key:generate
php artisan migrate
php artisan serve
```

### Mobile App Setup (Flutter)

```bash
cd "User app/version 5.0.0/shopo-ecommerce"
flutter pub get
flutter run
```

## 📋 Features

### Customer Features
- Product browsing and search
- Shopping cart and wishlist
- User authentication
- Order tracking
- Product reviews and ratings
- Multi-language support

### Vendor Features
- Vendor registration and management
- Product management
- Order management
- Sales analytics
- Commission tracking

### Admin Features
- User management
- Vendor management
- Product approval system
- Order management
- Analytics dashboard
- Payment gateway integration

## 🔧 Configuration

### Environment Variables

#### Frontend (.env.local)
```env
NEXT_PUBLIC_API_URL=http://localhost:8000/api
NEXT_PUBLIC_APP_URL=http://localhost:3000
```

#### Backend (.env)
```env
APP_NAME=Shopo
APP_ENV=local
APP_KEY=your-app-key
APP_DEBUG=true
APP_URL=http://localhost:8000

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=shopo_db
DB_USERNAME=root
DB_PASSWORD=
```

#### Flutter (lib/config/app_config.dart)
```dart
class AppConfig {
  static const String apiUrl = 'http://localhost:8000/api';
  static const String appName = 'Shopo';
}
```

## 📱 Mobile App Configuration

The Flutter app is located in `User app/version 5.0.0/shopo-ecommerce/` and includes:

- Android configuration in `android/`
- iOS configuration in `ios/`
- Web configuration in `web/`
- Main app logic in `lib/`

## 🌐 Frontend Configuration

The Next.js frontend includes:

- Pages in `pages/`
- Components in `src/components/`
- Styles in `styles/`
- Utilities in `utils/`
- Store management in `src/store/`

## ⚙️ Backend Configuration

The Laravel backend includes:

- API routes in `routes/api.php`
- Controllers in `app/Http/Controllers/`
- Models in `app/Models/`
- Migrations in `database/migrations/`
- Admin panel in `public/backend/`

## 🔒 Security

- All sensitive data is stored in environment variables
- API endpoints are protected with authentication
- File uploads are validated and sanitized
- SQL injection protection through Laravel's Eloquent ORM

## 📦 Deployment

### Frontend (Vercel/Netlify)
```bash
cd shopo-frontend
npm run build
# Deploy the .next folder
```

### Backend (Shared Hosting/VPS)
```bash
cd admin/Script/main_files
composer install --optimize-autoloader --no-dev
php artisan config:cache
php artisan route:cache
php artisan view:cache
```

### Mobile App
- Build APK: `flutter build apk --release`
- Build iOS: `flutter build ios --release`

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For support and questions:
- Check the documentation in `documentation/`
- Review the update logs in `update-log.txt`
- Create an issue in the repository

## 🔄 Version History

- **v5.0.0**: Latest stable version with all features
- **v4.0.0**: Previous major release
- **v3.9.2**: Bug fixes and improvements
- **v3.1.0**: Feature additions
- **v2.0.0**: Initial release

## 📊 Database

The project includes database schemas for different versions:
- `admin/database/Version 5.0.0/database.sql`
- `admin/database/Version 4.0.0/database.sql`
- `admin/database/Version 3.9.2/database.sql`

Use the appropriate version based on your deployment.

---

**Note**: This is a comprehensive ecommerce solution. Make sure to configure all environment variables and database connections before running the application. 