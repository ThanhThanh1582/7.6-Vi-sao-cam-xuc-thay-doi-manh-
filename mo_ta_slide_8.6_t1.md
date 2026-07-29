# ĐẶC TẢ CHI TIẾT SLIDE - BÀI 8.6: THIẾT LẬP LÁ CHẤN BẢO VỆ & RANH GIỚI CÁ NHÂN
## TIẾT 1: BÁC SĨ KHÁM BỆNH (CONCEPT BÁC SĨ NOVA HOSPITAL)

---

### 1. THÔNG TIN TIẾT HỌC
* **Tên bài học:** Thiết lập lá chắn bảo vệ & ranh giới cá nhân
* **Tiết học:** Tiết 1 – Bác sĩ khám bệnh
* **Big Question:** Làm thế nào để bảo vệ lá chắn ranh giới cá nhân trước hành vi lấn sân mà vẫn giữ được sự tôn trọng và tình bạn bền vững?
* **Output cuối của tiết:** SỔ TAY BÁC SĨ (Các khu vực ranh giới cá nhân, Dấu hiệu nhận biết ranh giới bị xâm phạm, Giải pháp từ chối quyết đoán bằng thông điệp tôi)

---

### 2. TỔNG QUAN VÀ ĐẶC TẢ CHI TIẾT 8 GIAI ĐOẠN SLIDE

#### SLIDE 1: TRANG TIÊU ĐỀ BÀI HỌC
* **Slide ID:** Slide 01
* **Mã hoạt động:** `MĐ01` (Mở đầu)
* **Nội dung văn bản:**
  * Tiêu đề chính: BÀI 8.6 • THIẾT LẬP LÁ CHẤN BẢO VỆ & RANH GIỚI CÁ NHÂN
  * Tiêu đề phụ: Concept Bác sĩ Nova Hospital — Nhập vai Bác sĩ nội trú tư vấn bảo vệ ranh giới cá nhân.
  * Thẻ định danh: `BÁC SĨ NỘI TRÚ NOVA HOSPITAL`
* **Thiết kế hình ảnh & Prompt AI:**
  * Bối cảnh phòng tư vấn tâm lý Nova Hospital hiện đại, khiên chắn bảo vệ phát sáng viền xanh neon cyan.
  * Prompt AI: `A bright medical consultation room with a glowing cyan energy shield floating in the middle, clean comic line-art style, vibrant colors, flat 2D vector illustration --ar 16:9`
* **Cơ chế tương tác:** Nút bấm *"BẮT ĐẦU BÀI HỌC 🛡️"* (Hitbox $80\text{px} \times 220\text{px}$). Chạm chuyển Slide 2.
* **Âm thanh & Thời gian:** Tiếng click tone nhẹ Web Audio API `playAudioTone(1000, 0.05)`. Không giới hạn thời gian.

---

#### SLIDE 2: MỤC TIÊU BÀI HỌC (3 TRỤ CỘT)
* **Slide ID:** Slide 02
* **Mã hoạt động:** `MT01` (Mục tiêu)
* **Nội dung văn bản:**
  * Tiêu đề chính: MỤC TIÊU BÀI HỌC (3 TRỤ CỘT)
  * Nội dung 3 thẻ:
    1. 🧪 Kiến thức: Nhận biết 3 khu vực ranh giới cá nhân (Thân thể & Vật lý, Cảm xúc & Tinh thần, Thông tin & Riêng tư). Hiểu cơ chế hạch hạnh nhân kích hoạt và Virus thao túng cảm xúc (guilt-trip).
    2. 🩹 Kỹ năng: Áp dụng Quy trình 3 bước (Bước 1 - Lắng nghe cơ thể (Observe), Bước 2 - Đánh giá ranh giới (Evaluate), Bước 3 - Lên tiếng quyết đoán (Respond)).
    3. ❤️ Thái độ: Tôn trọng lá chắn bảo vệ của bản thân và bạn bè; từ bỏ phản ứng né tránh (cười trừ) hoặc bốc đồng (gây hấn).
* **Thiết kế hình ảnh & Prompt AI:**
  * Layout 3 cột thẻ kiên cố viền gradient xanh lam, ngọc bích và vàng.
* **Cơ chế tương tác:** Hover / touch hiệu ứng trượt nhẹ 4px và đổi màu border.

---

#### SLIDE 3: CÂU HỎI CỐT LÕI (BIG QUESTION)
* **Slide ID:** Slide 03
* **Mã hoạt động:** `QS01` (Big Question)
* **Nội dung văn bản:**
  * Tiêu đề chính: CÂU HỎI CỐT LÕI (BIG QUESTION)
  * Câu hỏi chính: *"Làm thế nào để bảo vệ lá chắn ranh giới cá nhân trước hành vi lấn sân mà vẫn giữ được sự tôn trọng và tình bạn bền vững?"*
* **Thiết kế hình ảnh & Prompt AI:**
  * Bong bóng hội thoại Manga viền đen dày, giữa màn hình có dấu hỏi chấm to phát sáng.
* **Cơ chế tương tác:** Nhấp vào bong bóng để phát tiếng nảy nhẹ.

---

#### SLIDE 4: PHÂN VAI BÁC SĨ TẬP SỰ
* **Slide ID:** Slide 04
* **Mã hoạt động:** `PV01` (Phân vai)
* **Nội dung văn bản:**
  * Tiêu đề chính: PHÂN VAI BÁC SĨ TẬP SỰ NOVA HOSPITAL
  * Nội dung: *"Các em sẽ đóng vai kíp trực y tế Nova Hospital tiếp nhận các ca cấp cứu ranh giới cá nhân bị đe dọa. Hãy dùng kiến thức sinh lý và từ chối quyết đoán bằng thông điệp tôi để thiết lập lá chắn bảo vệ nhé!"*
* **Thiết kế hình ảnh & Prompt AI:**
  * Biểu tượng khiên bảo vệ y khoa 🛡️🩺 cỡ lớn, tông màu xanh ngọc.

---

#### SLIDE 5: GIAI ĐOẠN 1 - BÁO ĐỘNG ĐỎ CẢNH BÁO LẤN SÂN (5 PHÚT)
* **Slide ID:** Slide 05
* **Mã hoạt động:** `BĐ01` (Báo động)
* **Nội dung văn bản:**
  * Tiêu đề chính: 🚨 BÁO ĐỘNG ĐỎ: CẢNH BÁO LẤN SÂN RANH GIỚI!
  * Mô tả: Hệ thống Radar Nova Hospital phát hiện các ca bệnh học sinh bị xâm phạm khu vực ranh giới cá nhân!
  * Nút bấm: *"📡 KÍCH HOẠT CÒI HÚ VÀ RADAR QUÉT BÁO ĐỘNG"*
* **Thiết kế hình ảnh & Prompt AI:**
  * Đèn còi hú báo động đỏ nhấp nháy, radar quét vòng tròn màu đỏ khẩn cấp.
* **Cơ chế tương tác:** Chạm nút kích hoạt hiệu ứng còi hú Web Audio API `playSiren()` và bật đếm ngược 10 giây.
* **Âm thanh & Thời gian:** Đếm ngược 10s (`timer-val-5`). Còi hú `playSiren()`.

---

#### SLIDE 6: CHUẨN BỊ BỘ THẺ ĐẠO CỤ KÍP TRỰC
* **Slide ID:** Slide 06
* **Mã hoạt động:** `CB01` (Chuẩn bị)
* **Nội dung văn bản:**
  * Tiêu đề chính: CHUẨN BỊ BỘ THẺ ĐẠO CỤ KÍP TRỰC
  * Thẻ 1: 🛠️ Bộ thẻ màu đạo cụ (Thẻ Đỏ - Thân thể & Vật lý, Thẻ Xanh - Cảm xúc & Tinh thần, Thẻ Vàng - Thông tin & Riêng tư, Thẻ 👾 - Virus guilt-trip).
  * Thẻ 2: 👥 Hình thức tổ chức (Phân chia kíp trực 4 bác sĩ tập sự & Trạm trưởng nhóm).

---

#### SLIDE 7: QUY TRÌNH KHÁM BỆNH 3 BƯỚC
* **Slide ID:** Slide 07
* **Mã hoạt động:** `HD01` (Hướng dẫn)
* **Nội dung văn bản:**
  * Tiêu đề chính: QUY TRÌNH KHÁM BỆNH 3 BƯỚC
  * 3 ô bước:
    * Bước 1 - Lắng nghe cơ thể (Observe).
    * Bước 2 - Đánh giá ranh giới (Evaluate).
    * Bước 3 - Lên tiếng quyết đoán (Respond).

---

#### SLIDE 8: GAME RADAR RANH GIỚI 3 BỆNH NHÂN (A, NHI, HÙNG)
* **Slide ID:** Slide 08
* **Mã hoạt động:** `TH01` (Thực hành Game Sơ cứu)
* **Nội dung văn bản:**
  * Tiêu đề chính: GAME RADAR RANH GIỚI 3 BỆNH NHÂN (SƠ CỨU)
  * Hồ sơ 3 bệnh nhân:
    * 🎒 Bệnh nhân A: *"Bạn A bị tự ý lấy balo, lục tìm đồ dùng cá nhân khi chưa được cho phép."* ➔ [🔴 Vật lý] | [🔵 Cảm xúc]
    * 🔐 Bệnh nhân Nhi: *"Nhi bị ép phải đưa mật khẩu tài khoản mạng xã hội để kiểm tra tin nhắn riêng tư."* ➔ [🟡 Thông tin] | [🔴 Vật lý]
    * 👾 Bệnh nhân Hùng: *"Hùng bị trêu ngoại hình và bị kêu 'đùa tí làm gì căng', làm Hùng cảm thấy có lỗi."* ➔ [👾 Guilt-trip] | [🟡 Thông tin]
  * Nút kiểm tra: *"🔍 KIỂM TRA ĐÁP ÁN SƠ CỨU A, NHI, HÙNG"* (Hitbox $75\text{px} \times 240\text{px}$).
* **Thiết kế hình ảnh & Prompt AI:**
  * Bảng 3 khung bệnh án y khoa giấy ghim trên màn hình radar.
* **Cơ chế tương tác:** Chạm chọn nút khu vực ranh giới ➔ Viền phát sáng xanh ngọc `.selected`, phát âm thanh `playAudioTone(1000, 0.05)`. Bấm nút kiểm tra chuyển thẳng sang Slide 9 (`ĐA01`).
* **Âm thanh & Thời gian:** Đếm ngược 05:00 (`timer-val-8`).

---

#### SLIDE 9: TỔNG KẾT VI PHẠM RANH GIỚI THƯỜNG GẶP (GIAI ĐOẠN 2 - 4 PHÚT)
* **Slide ID:** Slide 09
* **Mã hoạt động:** `ĐA01` (Đáp án tổng kết)
* **Nội dung văn bản:**
  * Tiêu đề chính: TỔNG KẾT CÁC VI PHẠM RANH GIỚI CÁ NHÂN THƯỜNG GẶP
  * 3 Cột đáp án chuẩn y khoa:
    1. 🎒 1. Thân thể & Vật lý (Ca A): Tự ý chạm vào cơ thể khi chưa được sự đồng ý; Lục balo, tự ý lấy đồ dùng cá nhân.
    2. 🔐 2. Thông tin & Riêng tư (Ca Nhi): Ép đưa mật khẩu mạng xã hội; Đọc lén nhật ký, tin nhắn riêng tư.
    3. 👾 3. Cảm xúc & Guilt-trip (Ca Hùng): Lấy ngoại hình ra đùa giỡn trước tập thể; Dụ dỗ, ép buộc làm em thấy có lỗi.
* **Thiết kế hình ảnh & Prompt AI:**
  * Layout 3 bảng tổng kết y khoa viền màu đỏ, vàng, ngọc bích nổi bật.
