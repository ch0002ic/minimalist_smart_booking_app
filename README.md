# MVP Smart Room Booking Mobile App

## Overview

This project is a minimalist smart room booking mobile application built using Flutter. It offers a seamless and elegant experience for discovering and reserving meeting spaces with a focus on clean design, smooth animations, and responsive layouts. The app aims to provide a hassle-free booking process with modern UI/UX elements, including neumorphic design, interactive components, and micro-interactions.

本项目是一款使用 Flutter 构建的简约风格智能会议室预订移动应用。它提供无缝且优雅的体验，让用户轻松发现和预订会议室，重点在于简洁设计、平滑动画和响应式布局。该应用旨在通过现代化的用户界面和交互元素（如新拟态设计、交互组件和微交互效果）为用户带来无烦恼的预订流程。

---

## Key Features

### English
- **Room Listings:** Display beautifully designed room cards with subtle animations, price badges, and amenity tags.
- **Room Details:** Detailed view of each room including an image carousel, description, and facility information.
- **Booking Workflow:** Interactive booking form with date selection, real-time price calculation, and smooth navigation.
- **Responsive Design:** Adaptive layout that works across mobile, tablet, and desktop devices using MediaQuery and LayoutBuilder.
- **Neumorphic Design Elements:** Modern look with subtle shadows and highlights for depth.
- **Service Layer:** A dedicated service for booking operations, including API simulation and error handling.
- **Clean Architecture:** Well-organized project structure with folders for models, widgets, pages, services, constants, and utilities.

### 中文
- **房间列表展示：** 美观的房间卡片，带有细腻的动画效果、价格徽章和设施标签。
- **房间详情：** 每个房间的详细视图，包含图片轮播、描述和设施信息。
- **预订流程：** 交互式预订表单，支持日期选择、实时价格计算以及平滑的页面跳转。
- **响应式设计：** 使用 MediaQuery 和 LayoutBuilder 实现适用于手机、平板和桌面设备的自适应布局。
- **新拟态设计元素：** 通过细腻的阴影和高光效果实现现代化外观，增强视觉深度。
- **服务层支持：** 专门的预订服务模块，用于 API 调用模拟和错误处理。
- **清晰架构：** 项目结构清晰，包括模型（models）、组件（widgets）、页面（pages）、服务（services）、常量（constants）和工具（utils）等文件夹。

---

## Technologies & Tools

### English
- **Flutter:** For building a cross-platform mobile application.
- **Dart:** The programming language used for Flutter development.
- **Custom Animations:** Utilizing Flutter’s AnimationController and AnimatedContainer.
- **Responsive Design:** Using MediaQuery and LayoutBuilder for adaptive layouts.
- **Neumorphic UI Elements:** Custom BoxShadow implementations to achieve a modern, tactile feel.

### 中文
- **Flutter：** 用于构建跨平台移动应用。
- **Dart：** Flutter 开发所使用的编程语言。
- **自定义动画：** 利用 Flutter 的 AnimationController 和 AnimatedContainer 实现流畅动画。
- **响应式设计：** 使用 MediaQuery 和 LayoutBuilder 实现自适应布局。
- **新拟态 UI 元素：** 通过自定义 BoxShadow 实现现代化触感效果。

---

## Project Structure

### English
The project is organized into the following key folders under the `lib/` directory:
- **models:** Contains the Room model representing room data.
- **widgets:** Houses reusable UI components like RoomCard, AmenityChip, BookingForm, and ImageCarousel.
- **pages:** Includes main pages such as HomePage, RoomDetailPage, and additional views.
- **services:** Contains the BookingService for handling booking operations.
- **constants:** Defines themes, mock data, and other constants.
- **utils:** Contains utility files for responsive design and other helper functions.

### 中文
项目在 `lib/` 目录下的主要文件夹组织如下：
- **models：** 包含表示房间数据的 Room 模型。
- **widgets：** 存放可复用的 UI 组件，如 RoomCard、AmenityChip、BookingForm 和 ImageCarousel。
- **pages：** 包括主要页面，如 HomePage、RoomDetailPage 及其他视图。
- **services：** 包含用于处理预订操作的 BookingService。
- **constants：** 定义主题、模拟数据及其他常量。
- **utils：** 包含响应式设计和其他辅助函数的工具文件。

---

## Installation & Setup

1. **Clone the Repository (克隆代码库):**
   ```bash
   git clone https://github.com/ch0002ic/minimalist_smart_booking_app.git
   cd room-booking-app
   ```
2. **Install Dependencies (安装依赖):**
   ```bash
   flutter pub get
   ```
3. **Run the App (运行应用):**
   ```bash
   flutter run
   ```
4. **Build for Production (生产构建):**
   Follow the standard Flutter build instructions for Android and iOS.

---

## Usage

### English
- **Navigating the App:**  
  The home screen displays a grid of available rooms. Tapping on a room card navigates to a detailed view where you can view more images, check amenities, and initiate the booking process.
- **Booking a Room:**  
  Use the booking form to select dates and times. The real-time price calculation provides an instant estimate of the total cost.
- **Responsive Experience:**  
  The app adapts seamlessly across various device sizes, ensuring an optimal user experience whether on a smartphone, tablet, or desktop.

### 中文
- **应用导航：**  
  首页展示可用房间的网格列表。点击房间卡片会进入详细页面，在这里可以查看更多图片、查看设施信息并启动预订流程。
- **房间预订：**  
  使用预订表单选择日期和时间，实时价格计算会立即显示总费用估算。
- **响应式体验：**  
  无论是在智能手机、平板还是桌面设备上，应用都能自适应调整，确保最佳用户体验。

---

## Future Enhancements

### English
- **API Integration:** Implement real API calls to handle real-time booking and room availability.
- **User Authentication:** Add user login/signup functionality to save booking history.
- **Enhanced Animations:** Incorporate more advanced animations for transitions and state changes.
- **Additional Filters:** Allow users to filter rooms based on capacity, amenities, and price range.
- **Localization:** Expand support for multiple languages beyond English and Chinese.

### 中文
- **API 集成：** 实现真实的 API 调用以处理实时预订和房间可用性。
- **用户认证：** 添加用户登录/注册功能，保存预订历史记录。
- **增强动画效果：** 为页面切换和状态变化引入更高级的动画效果。
- **更多筛选功能：** 允许用户根据容量、设施和价格范围过滤房间。
- **多语言支持：** 除了英语和中文外，扩展更多语言的支持。

---

## Credits & License

### English
This project was developed as an MVP to showcase a minimalist, responsive, and functional room booking app using Flutter. Feel free to contribute, suggest improvements, or report issues.

This project is licensed under the MIT License.

### 中文
本项目作为一个 MVP 展示，旨在展示一款极简、响应迅速且功能齐全的 Flutter 会议室预订应用。欢迎大家贡献代码、提出改进建议或反馈问题。

本项目采用 MIT 许可证进行授权。
