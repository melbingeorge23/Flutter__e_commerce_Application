# 🛍️ ShopEase - Flutter E-Commerce App

A modern, beautiful, and fully functional e-commerce mobile application built with Flutter. ShopEase provides a seamless shopping experience with a stunning dark theme UI and smooth animations.


## 📱 App Screenshots

### Onboarding & Authentication
| Splash Screen | Onboarding | Login Screen |
|---------------|------------|--------------|
| <img src="screenshots/splash_screen.png" width="200"> | <img src="screenshots/onboarding_screen.png" width="200"> | <img src="screenshots/login_screen.png" width="200"> |

### Main Application Flow
| Home Screen | Product Details | Shopping Cart |
|-------------|-----------------|---------------|
| <img src="screenshots/home_screen.png" width="200"> | <img src="screenshots/product_detail.png" width="200"> | <img src="screenshots/cart_screen.png" width="200"> |

### Checkout & Profile
| Checkout | Order Confirmation | User Profile |
|----------|-------------------|--------------|
| <img src="screenshots/checkout_screen.png" width="200"> | <img src="screenshots/order_confirmation.png" width="200"> | <img src="screenshots/profile_screen.png" width="200"> |

## ✨ Features

### 🎯 Core Features
- **User Authentication** - Secure login and user management
- **Product Catalog** - Beautiful product grid with categories
- **Product Details** - Comprehensive product information with image carousel
- **Shopping Cart** - Add/remove items with quantity management
- **Checkout Process** - Complete order placement with address and payment
- **Order Management** - Order tracking and history
- **User Profile** - Personal information and settings

### 🎨 UI/UX Features
- **Dark Theme Design** - Easy on eyes with modern aesthetics
- **Smooth Animations** - Fluid transitions and micro-interactions
- **Responsive Layout** - Optimized for various screen sizes
- **Intuitive Navigation** - Bottom navigation with clear hierarchy
- **Loading States** - Beautiful loading indicators and skeleton screens

### 🔧 Technical Features
- **State Management** - Provider for efficient state management
- **Clean Architecture** - Well-organized project structure
- **Reusable Components** - Modular and maintainable code
- **Form Validation** - Robust input validation
- **Error Handling** - Graceful error handling and user feedback

## 🛠️ Technology Stack

- **Framework**: Flutter 3.0+
- **Language**: Dart
- **State Management**: Provider
- **Local Storage**: Shared Preferences
- **UI Components**: Material Design 3
- **Icons**: Material Icons
- **Fonts**: Plus Jakarta Sans

## 🎨 Design System

### Color Palette
```dart
primary: #0DF2F2      // Teal accent color
background-dark: #102222  // Dark background
surface-dark: #1B2727     // Card backgrounds
text-primary: #FFFFFF     // White text
text-secondary: #9CBABA   // Light gray text
border-dark: #3B5454      // Border colors
```

### 📁 Project Structure

lib/
├── main.dart                 # Application entry point
├── models/                   # Data models
│   ├── product.dart         # Product data structure
│   └── app_order.dart       # Order management
├── providers/               # State management
│   ├── cart_provider.dart   # Shopping cart state
│   └── user_provider.dart   # User authentication state
├── screens/                 # UI screens
│   ├── splash_screen.dart   # App loading screen
│   ├── onboarding_screen.dart # User onboarding
│   ├── login_screen.dart    # Authentication
│   ├── home_screen.dart     # Main product listing
│   ├── product_detail_screen.dart # Product details
│   ├── cart_screen.dart     # Shopping cart
│   ├── checkout_screen.dart # Order checkout
│   ├── order_confirmation_screen.dart # Order success
│   └── profile_screen.dart  # User profile
└── services/               # Business logic
    ├── mock_auth_service.dart    # Authentication service
    └── mock_database_service.dart # Local data service



🎯 Future Enhancements
Planned Features
Backend integration with Firebase
Real payment gateway integration
Push notifications
Wishlist functionality
Product reviews and ratings
Advanced search and filters
Order tracking with maps
Multi-language support
Dark/Light theme toggle
Technical Improvements
Unit and widget testing
CI/CD pipeline
Performance optimization
Code documentation
Error tracking and analytics

🙏 Acknowledgments
Design inspiration from modern e-commerce apps

Flutter community for excellent packages and support

Unsplash for high-quality product images

Material Design for UI components and guidelines

📞 Support
If you have any questions or need help with the project, please:

Open an issue on GitHub

Contact the development team

Check the documentation

<div align="center">
Built with ❤️ using Flutter

https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white
https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white

</div> ```
