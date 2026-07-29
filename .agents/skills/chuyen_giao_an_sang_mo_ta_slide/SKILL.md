---
name: chuyen_giao_an_sang_mo_ta_slide
description: Hướng dẫn cụ thể hóa kịch bản giáo án thành đặc tả chi tiết từng slide, thiết kế giao diện giả lập (Mock UI), viết prompt tạo ảnh và xác định cơ chế tương tác.
---

# Kỹ năng Chuyển đổi Lesson Design thành Mô tả Chi tiết Slide (Slide Specification)

Kỹ năng này hướng dẫn cách chuyển đổi khung bài giảng (Lesson Design) thành tài liệu đặc tả chi tiết từng slide (Specification / Storyboard) để làm tài liệu thiết kế đồ họa và lập trình mã nguồn slide tương tác.

---

## 1. Cấu trúc Tài liệu Đặc tả Slide chuẩn (Specification Layout)

Mỗi slide trong tài liệu đặc tả phải có đầy đủ các thông tin sau để lập trình viên và người thiết kế đồ họa có thể thi công chính xác:

1.  **Slide ID:** Số thứ tự slide trong bài giảng (ví dụ: Slide 11).
2.  **Mã hoạt động (Activity Code):** Gắn nhãn hoạt động từ giáo án (ví dụ: `TH01` - Thực hành, `ĐA01` - Đáp án).
3.  **Nội dung văn bản (Text Content):**
    *   Tiêu đề chính (Main Title): Ngắn gọn, súc tích.
    *   Tiêu đề phụ/Mô tả (Subtitle/Description): Hướng dẫn hành động cụ thể cho học sinh.
    *   Nội dung chi tiết/Hội thoại (nếu có).
4.  **Thiết kế hình ảnh & Prompt AI (Visual Assets):** Mô tả giao diện, bối cảnh, các biểu tượng cần dùng và viết prompt AI chi tiết.
5.  **Cơ chế tương tác & Phản hồi (Interaction & Logic):**
    *   Các nút bấm, thẻ có thể chạm chọn.
    *   Hiệu ứng hiển thị (ví dụ: bấm nút "Chi tiết" hiển thị popup modal, chạm thẻ 2 cột kết nối đường thẳng SVG).
    *   Hệ thống phản hồi đúng/sai (ví dụ: đúng đổi viền xanh lá, sai đổi viền đỏ).
6.  **Cài đặt thời gian & Âm thanh (Timer & Audio):**
    *   Thời gian đếm ngược (ví dụ: đếm ngược 05:00).
    *   Âm thanh kích hoạt (súng bắn bong bóng, tiếng đóng dấu cam kết, còi hú báo động).

---

## 2. Thiết kế Giao diện Giả lập (Mock UI Design)

Thay vì trình bày lý thuyết bằng các dòng văn bản khô khan, người viết đặc tả slide phải thiết kế kịch bản sử dụng giao diện thiết bị số giả lập:

*   **Màn hình điện thoại thông minh (Phone Mockup):** Giả lập giao diện tin nhắn chat (Zalo, Messenger), màn hình khóa điện thoại, thông báo khẩn cấp để học sinh phân tích nội dung lừa đảo hoặc dấu hiệu bất thường.
*   **Máy tính bảng/Bệnh án điện tử (Tablet Dashboard/Patient Grid):** Thiết kế dạng lưới thông tin hiển thị danh sách bệnh nhân, giường bệnh, triệu chứng lâm sàng. Khi bấm vào mỗi ca sẽ mở ra một cửa sổ popup modal chứa đầy đủ thông tin chi tiết.
*   **Bảng phân loại (T-Chart / Bucket):** Chia màn hình thành các cột để thực hiện phân loại hành vi kéo thả (ví dụ: cột **Nên làm** và **Không nên làm**).

---

## 3. Kỹ nghệ Viết Prompt AI tạo ảnh (Visual & AI Prompt Engineering)

Để hình ảnh minh họa trên slide đồng bộ về mặt thẩm mỹ và thu hút học sinh, prompt AI phải được cấu trúc chặt chẽ theo style **Comic Line-Art** hoặc **2D Flat Vector**:

*   **Cấu trúc Prompt chuẩn 4 khối:**
    $$\text{[Đối tượng chính]} + \text{[Hành động/Bối cảnh]} + \text{[Phong cách nghệ thuật]} + \text{[Đặc tả bổ trợ & Tỉ lệ]}$$
    *   *Ví dụ:* `A teenage boy looking nervously at a smartphone screen with glowing red text, clean comic line-art style, bright colors, white background, flat vector illustration --ar 16:9`
*   **Thiết kế Text lồng ghép trực quan (Embedded Text):** Để slide có tính scannable (quét thông tin nhanh), hướng dẫn prompt lồng chữ tiếng Việt viết hoa nổi bật vào các yếu tố đồ họa.
    *   *Ví dụ:* Thiết kế các nút bấm hoặc thẻ có chữ to rõ ràng như `CHỤP MÀN HÌNH`, `XÓA TIN NHẮN`, `HỎI NGƯỜI LỚN`.

---

## 4. Định hình Cơ chế Tương tác

Người viết đặc tả cần mô tả rõ ràng luồng logic tương tác của slide:

*   **Trạng thái ban đầu (Default State):** Hiển thị những gì, nút nào bị vô hiệu hóa (disabled).
*   **Hành động của học sinh (User Action):** Nhấp chọn thẻ, gõ text, hay chạm kết nối.
*   **Trạng thái thay đổi (State Change):** Khi click vào thẻ A, thẻ A đổi màu nền, vẽ một đường SVG nối tới thẻ B ở cột đối diện.
*   **Hệ thống chấm điểm (Validation Engine):** Khi bấm nút "Kiểm tra", hệ thống sẽ so khớp ID của nguồn và đích. Nếu đúng phát âm thanh thành công, nếu sai phát âm thanh cảnh báo lỗi và reset đường nối.
