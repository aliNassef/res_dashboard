# Responsive Flutter Dashboard

A responsive admin dashboard built with Flutter, focusing on income tracking and expense management.

## 🌟 Key Features

- ✨ Fully responsive design that works across all screen sizes
- 📊 Interactive pie chart for income analysis
- 💼 Expenses and Quick Invoice section
- 🎨 Modern UI with Material Design 3
- 📱 Built-in device preview for development

## 🏗️ Project Structure

### Responsive Layouts
if (width < 600) => Mobile Layout
if (width < 1300) => Tablet Layout
else => Desktop Layout

### Income Analysis
The project displays detailed income breakdown:
- Design Services (40%)
- Design Products (25%)
- Product Royalties (20%)
- Other Sources (22%)

## 🛠️ Technologies Used

- Flutter
- fl_chart for data visualization
- device_preview for testing
- Material Design 3

## 📱 Responsive Features

### Desktop
- Three-column layout
- Fixed sidebar
- Full charts and statistics display

### Tablet
- Two-column layout
- Fixed sidebar
- Optimized for medium screens

### Mobile
- Single column layout
- Collapsible drawer
- Top app bar with menu button

## 🎨 Color System

```dart
AppColors {
    primaryDark
    secondaryBlue
    primaryLight2
    lightGrey
    white
}
```

## 📦 Core Components

- `AdaptiveLayout`: Manages responsive layouts
- `CustomDrawer`: Navigation sidebar
- `IncomeFeature`: Income analysis with charts
- `ExpensesFeature`: Expense tracking
- `QuickInvoiceFeature`: Quick invoice creation

## 🚀 Getting Started

1. Install dependencies:
```bash
flutter pub get
```

2. Run the project:
```bash
flutter run
```

## 📊 Charts

The project uses `fl_chart` to display:
- Interactive pie charts
- Detailed income analysis
- Responsive data visualization

## 🔍 Project Features Breakdown

### Income Section
- Interactive pie chart
- Percentage breakdown
- Category-wise analysis
- Hover effects

### Expenses Section
- Transaction history
- Quick invoice generation
- Expense categorization

### Navigation
- Responsive drawer
- Context-aware layout
- Smooth transitions

## 💻 Code Architecture

```
lib/
├── views/
│   ├── desktop_layout.dart
│   ├── tablet_layout.dart
│   └── mobile_layout.dart
├── widgets/
│   ├── income_feature/
│   ├── expenses_feature/
│   └── custom_drawer/
└── core/
    ├── utils/
    └── extensions/
```

## 🔜 Suggested Future Enhancements

- [ ] Dark mode implementation
- [ ] Backend API integration
- [ ] Additional analytics
- [ ] Chart performance optimization
- [ ] Data export functionality
- [ ] User authentication
- [ ] Theme customization
- [ ] Localization support

## 🤝 Contributing

Contributions are welcome! Please feel free to submit pull requests.

## 📄 License

This project is licensed under the MIT License.

## 🛟 Support

For support, please open an issue in the GitHub repository.

## 🙏 Acknowledgments

- Flutter team for the framework
- fl_chart library for charts
- device_preview for testing tools