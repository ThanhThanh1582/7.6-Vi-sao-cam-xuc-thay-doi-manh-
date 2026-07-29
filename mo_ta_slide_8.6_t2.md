# ĐẶC TẢ CHI TIẾT SLIDE - BÀI 8.6: THIẾT LẬP LÁ CHẤN BẢO VỆ & RANH GIỚI CÁ NHÂN
## TIẾT 2: BÁC SĨ CỘNG ĐỒNG (CONCEPT BÁC SĨ CỘNG ĐỒNG NOVA HOSPITAL)

---

### 1. THÔNG TIN TIẾT HỌC
* **Tên bài học:** Thiết lập lá chắn bảo vệ & ranh giới cá nhân
* **Tiết học:** Tiết 2 — Bác sĩ cộng đồng
* **Big Question:** Nếu nhiều bạn chưa biết cách bảo vệ lá chắn ranh giới cá nhân hoặc vô tình lấn sân ranh giới của bạn bè, chúng ta nên giúp cộng đồng thay đổi điều gì?
* **Output cuối của tiết:** Poster tuyên truyền: "Thiết lập ranh giới cá nhân & Lá chắn bảo vệ an toàn học đường"

---

### 2. TỔNG QUAN VÀ ĐẶC TẢ CHI TIẾT SLIDE TIẾT 2 (SLIDES 10 - 17)

#### SLIDE 10: PATIENT GRID CA BỆNH NHÂN (GIAI ĐOẠN 2 - 4 PHÚT)
* **Slide ID:** Slide 10
* **Mã hoạt động:** `NV01` (Patient Grid Hồ sơ Bệnh án)
* **Nội dung văn bản:**
  * Tiêu đề chính: PATIENT GRID CA BỆNH NHÂN (CHẠM ĐỂ XEM HỒ SƠ)
  * Lưới 4 bệnh nhân:
    1. 🎒 Bệnh nhân Su: *"Su bị bạn cùng lớp tự ý lấy balo và lục tìm tẩy mà không hề xin phép trước."*
    2. 🔐 Bệnh nhân Minh Anh: *"Minh Anh bị bạn thân ép phải đưa mật khẩu tài khoản mạng xã hội để kiểm tra tin nhắn."*
    3. 💬 Bệnh nhân Kem: *"Kem bị các bạn đem ngoại hình ra làm trò đùa trước tập thể và kêu đùa tí làm gì căng."*
    4. 👾 Bệnh nhân Bảo Vy: *"Bảo Vy bị người khác guilt-trip ép cho mượn sổ nhật ký cá nhân nếu không sẽ nghỉ chơi."*
* **Thiết kế hình ảnh & Prompt AI:**
  * Layout lưới 4 ô vuông thẻ y khoa nổi bực với icon 3D emoji.
* **Cơ chế tương tác:** Chạm chọn ô bệnh nhân ➔ Bật Modal Popup hiển thị hồ sơ chi tiết và phát âm thanh lật sổ y khoa `playStampSound()`.
* **Âm thanh & Thời gian:** Đếm ngược 4 phút (`timer-val-10`).

---

#### SLIDE 11: GIAI ĐOẠN 3 - KHÁM BỆNH LÂM SÀNG (8 PHÚT)
* **Slide ID:** Slide 11
* **Mã hoạt động:** `GT01` (Giới thiệu Khám bệnh)
* **Nội dung văn bản:**
  * Tiêu đề chính: GIAI ĐOẠN 3: KHÁM BỆNH LÂM SÀNG (8 PHÚT)
  * Mô tả: Khám bệnh bóc tách dấu hiệu ranh giới cá nhân bị xâm phạm thông qua 3 tiêu chí: Thân thể & Vật lý, Cảm xúc & Tinh thần, Thông tin & Riêng tư.

---

#### SLIDE 12: CHUẨN BỊ KHÁM BỆNH GIAI ĐOẠN 3
* **Slide ID:** Slide 12
* **Mã hoạt động:** `CB01` (Chuẩn bị)
* **Nội dung văn bản:**
  * Tiêu đề chính: CHUẨN BỊ KHÁM BỆNH GIAI ĐOẠN 3
  * 🛠️ Dụng cụ: 4 hồ sơ ca bệnh (Su, Minh Anh, Kem, Bảo Vy), phiếu khám bảng giấy & bút dạ quang.
  * 👥 Tổ chức: Thảo luận nhóm 4 bác sĩ kíp trực y tế cộng đồng.

---

#### SLIDE 13: QUY TRÌNH GẠCH CHÂN DẤU HIỆU SINH LÝ
* **Slide ID:** Slide 13
* **Mã hoạt động:** `HD01` (Hướng dẫn)
* **Nội dung văn bản:**
  * Tiêu đề chính: QUY TRÌNH GẠCH CHÂN DẤU HIỆU SINH LÝ
  * 3 Bước khám:
    1. Đọc kỹ hồ sơ ca bệnh bị lấn sân ranh giới.
    2. Gạch chân từ khóa triệu chứng sinh lý (tim đập nhanh, căng cơ toàn thân, muốn lùi lại xa).
    3. Gạch chân hành vi Virus thao túng cảm xúc (guilt-trip làm cho cảm thấy có lỗi).

---

#### SLIDE 14: GAME TOUCH-TO-HIGHLIGHT TỪ KHÓA TRIỆU CHỨNG
* **Slide ID:** Slide 14
* **Mã hoạt động:** `TH01` (Thực hành Khám bệnh)
* **Nội dung văn bản:**
  * Tiêu đề chính: GAME TOUCH-TO-HIGHLIGHT TỪ KHÓA TRIỆU CHỨNG
  * Văn bản khám: *"Khi ranh giới bị xâm phạm, nạn nhân cảm thấy [tim đập nhanh] [căng cơ toàn thân] [muốn lùi lại xa] và bị đối phương [guilt-trip làm cho cảm thấy có lỗi]."*
  * Nút bấm: *"🔍 KIỂM TRA ĐÁP ÁN KHÁM BỆNH"*
* **Cơ chế tương tác:** Chạm từ khóa ➔ Bật/tắt vệt highlight vàng neon phát sáng `.highlighted`, phát âm thanh `playAudioTone(1200, 0.05)`. Bấm nút kiểm tra chuyển sang Slide 15.
* **Âm thanh & Thời gian:** Đếm ngược 08:00 (`timer-val-14`).

---

#### SLIDE 15: CHUẨN BỊ CHẨN ĐOÁN (GIAI ĐOẠN 4 - 6 PHÚT)
* **Slide ID:** Slide 15
* **Mã hoạt động:** `CB01` (Chuẩn bị Chẩn đoán)
* **Nội dung văn bản:**
  * Tiêu đề chính: CHUẨN BỊ CHẨN ĐOÁN (GIAI ĐOẠN 4 - 6 PHÚT)
  * Mô tả: Phân loại 3 khu vực ranh giới cá nhân (Thân thể & Vật lý, Cảm xúc & Tinh thần, Thông tin & Riêng tư). Phân tích bảng Nguyên nhân - Hậu quả nếu vi phạm kéo dài 1 năm.

---

#### SLIDE 16: PHIÊN HỘI CHẨN KÍP TRỰC (GIAI ĐOẠN 5 - 5 PHÚT)
* **Slide ID:** Slide 16
* **Mã hoạt động:** `TB01` (Hội chẩn phản biện)
* **Nội dung văn bản:**
  * Tiêu đề chính: GIAI ĐOẠN 5: PHIÊN HỘI CHẨN KÍP TRỰC (5 PHÚT)
  * Mô tả: Đại diện kíp trực báo cáo kết quả chẩn đoán bóc tách 3 khu vực ranh giới và phản biện nguy cơ tổn thương ranh giới cá nhân.

---

#### SLIDE 17: ĐÁP ÁN CHẨN ĐOÁN 3 KHU VỰC & RED STAMP
* **Slide ID:** Slide 17
* **Mã hoạt động:** `ĐA01` (Đáp án Chẩn đoán & Con dấu đỏ)
* **Nội dung văn bản:**
  * Tiêu đề chính: ĐÁP ÁN CHẨN ĐOÁN 3 KHU VỰC & RED STAMP
  * Nội dung đáp án: Thân thể & Vật lý (đồ dùng cá nhân), Cảm xúc & Tinh thần (an toàn tâm lý), Thông tin & Riêng tư (mật khẩu, tin nhắn).
  * Nút đóng dấu: *"📌 ĐÓNG DẤU RED STAMP ĐÃ PHÊ DUYỆT"*
* **Cơ chế tương tác:** Bấm nút đóng dấu ➔ Nảy mút con dấu đỏ **"RED STAMP ĐÃ PHÊ DUYỆT"** nghiêng -12 deg phát âm thanh `playStampSound()`.
