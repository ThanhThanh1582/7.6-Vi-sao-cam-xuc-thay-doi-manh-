# Hướng Dẫn Cài Đặt & Sử Dụng Skill: lap_trinh_slide_tuong_tac

## 1. Giới thiệu
Skill `lap_trinh_slide_tuong_tac` đúc kết các chuẩn mực kỹ thuật lập trình HTML5, CSS3, Vanilla JS tối ưu hóa cho màn hình cảm ứng tương tác thông minh (Smartboard), hỗ trợ game nối SVG Tap-to-Connect và âm thanh thuần Web Audio API.

## 2. Cấu trúc Skill
```
lap_trinh_slide_tuong_tac/
├── SKILL.md     # Hướng dẫn chi tiết kỹ thuật lập trình UI/UX Smartboard
└── huongdan.md  # Tệp hướng dẫn cài đặt này
```

## 3. Hướng dẫn Cài đặt sang Dự án Mới
1. Copy thư mục `lap_trinh_slide_tuong_tac` vào thư mục `.agents/skills/` của dự án mới.
2. Không yêu cầu cài đặt thư viện npm hay bên thứ ba (dùng thuần HTML/CSS/JS).

## 4. Các Quy Tắc Kỹ Thuật Bắt Buộc
- **Hitbox Smartboard:** Tất cả các vùng tương tác (nút bấm, thẻ chọn) phải có kích thước tối thiểu **$70\text{px} \times 70\text{px}$**.
- **Game nối SVG:** Sử dụng cơ chế chạm chọn (Tap-to-Connect) kết hợp vẽ đường nối SVG động. Bắt buộc lắng nghe sự kiện `window.addEventListener('resize', ...)` để vẽ lại tọa độ khi co giãn màn hình.
- **Web Audio API:** Không dùng file mp3/wav tĩnh. Tổng hợp âm thanh còi hú, click, correct, đóng dấu trực tiếp bằng Web Audio API.
