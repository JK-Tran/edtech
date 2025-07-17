# 📱 EdTech Mobile App (Flutter)

Ứng dụng mobile EdTech được xây dựng bằng Flutter theo kiến trúc **Clean Architecture** để đảm bảo khả năng mở rộng, dễ bảo trì và test hiệu quả.

---

## 🏗️ Kiến trúc dự án

Dự án sử dụng mô hình 3-layer clean architecture:

```
lib/
├── core/              # Hằng số, utils, theme, xử lý lỗi
├── data/              # Data layer: models, datasource, repositories impl
├── domain/            # Domain layer: entities, repository interface, usecases
├── presentation/      # UI layer: blocs, pages, widgets
├── env/               # Cấu hình theo môi trường (dev, stg, prod)
├── routes/            # Router điều hướng
├── injection_container.dart  # Cấu hình Dependency Injection
├── bootstrap.dart     # Khởi tạo app
├── main_dev.dart      # Môi trường Development
├── main_stg.dart      # Môi trường Staging
└── main.dart          # ⚠️ Không dùng để chạy
```

---

## 🚀 Cách chạy ứng dụng

### 1. Cài đặt Flutter

```bash
flutter --version
# Flutter 3.x.x trở lên được khuyến nghị
```

### 2. Cài dependencies

```bash
flutter pub get
```

### 3. Chạy môi trường Development

```bash
flutter run -t lib/main_dev.dart
```

### 4. Chạy môi trường Staging

```bash
flutter run -t lib/main_stg.dart
```

---

## 🧪 Chạy test

```bash
flutter test
```

---

## 📦 Các thư viện chính

| Package              | Mục đích                            |
|---------------------|-------------------------------------|
| `flutter_bloc`       | State Management (Bloc pattern)     |
| `dio`                | Gọi API RESTful                     |
| `get_it` + `injectable` | Dependency Injection           |
| `hive`               | Local DB lightweight                |
| `equatable`          | So sánh object hiệu quả             |
| `json_serializable`  | Map JSON ↔ Object tự động           |

---

## 🌐 Cấu hình môi trường

File cấu hình môi trường nằm trong thư mục `lib/env/`:

| Môi trường | File config          | Biến chính                 |
|------------|----------------------|----------------------------|
| Dev        | `env_dev.dart`       | `apiBaseUrl = https://...` |
| Staging    | `env_stg.dart`       |                            |

Truy cập qua `Env.apiBaseUrl`, `Env.envName` trong toàn app.

---

## 🛠️ Cấu hình đa môi trường (Flavors)

### iOS

```bash
flutter run -t lib/main_stg.dart --flavor stg
```

**Lưu ý:** bạn cần setup Scheme và `.xcconfig` cho từng flavor trong Xcode:
- `Runner-dev`, `Runner-stg`, `Runner-prod`

### Android

Trong `android/app/build.gradle`:

```gradle
flavorDimensions "app"
productFlavors {
    dev {
        dimension "app"
        applicationIdSuffix ".dev"
    }
    stg {
        dimension "app"
        applicationIdSuffix ".stg"
    }
    prod {
        dimension "app"
    }
}
```

Chạy:

```bash
flutter run --flavor stg -t lib/main_stg.dart
```

---

## 📸 Giao diện

| Trang chủ | Trang đăng nhập |
|----------|-----------------|
| ![home](screenshots/home.png) | ![login](screenshots/login.png) |

---

## 🔌 API sử dụng

- `https://api-dev.example.com` (dev)
- `https://api-stg.example.com` (staging)

Tất cả API được gọi thông qua `Dio` và được cấu hình tại `core/network/api_service.dart`.

---

## 🔐 Bảo mật

Không commit:

- `google-services.json`
- `GoogleService-Info.plist`
- Token thật hoặc file `.env`

---

## 📐 Design Decisions

- Clean Architecture 3-layer
- Bloc pattern để dễ test và tách biệt UI/business
- `GetIt + Injectable` để xử lý dependency
- `Dio` dùng interceptor để gắn token tự động
- Có thể scale theo micro-feature structure nếu cần

📎 Xem thêm `ARCHITECTURE.md` nếu có.

---

## ✅ Quy ước commit

Chúng tôi sử dụng chuẩn commit `conventional commits`:

```
feat: thêm tính năng mới
fix: sửa lỗi
refactor: cải tổ code không thay đổi logic
chore: cấu hình, script, CI/CD
```

---

## ⚙️ CI/CD

Sử dụng GitHub Actions:

- `build.yml`: Kiểm tra format, test, build APK/AAB
- `firebase-deploy.yml`: Deploy staging lên Firebase App Distribution

Xem thư mục `.github/workflows/` để chỉnh sửa thêm.

---

## 📜 Giấy phép

MIT License.
