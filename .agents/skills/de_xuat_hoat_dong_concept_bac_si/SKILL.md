---
name: de_xuat_hoat_dong_concept_bac_si
description: Hướng dẫn chi tiết thiết kế bài giảng y khoa/kỹ năng sống theo concept "Bác sĩ", chuyển hóa tài liệu thô thành hoạt động tương tác, kịch bản hóa thực chiến và trực quan hóa giao diện số.
---

# Kỹ năng Đề xuất Hoạt động và Thiết kế Giáo án Concept Bác sĩ

Kỹ năng này hướng dẫn phương pháp luận, các công cụ sư phạm chuyên sâu và quy tắc thiết kế slide để chuyển đổi các tài liệu kiến thức thô (y khoa, kỹ năng sống, an toàn số) thành một kịch bản bài giảng hấp dẫn, thực tế và chuẩn sư phạm theo mô hình **Bác sĩ khám bệnh** (Nova Hospital).

---

## 1. 5 Kỹ năng Thiết kế Bài giảng Chuyên sâu (Lesson Design Skills)

### 1.1. Chuẩn hóa & Đồng bộ hóa Khung năng lực (Form-matching & Alignment)
*   **Phân rã mục tiêu bài học:** Thay vì giữ các mục tiêu chung chung, người thiết kế phải chuyển dịch và phân rã các tài liệu kiến thức thô thành các tiêu chí đánh giá cụ thể về **Kiến thức - Năng lực - Phẩm chất** theo đúng chuẩn chương trình giáo dục hiện hành (ví dụ: GDPT 2018).
*   **Tiến trình 4 bước chuẩn của hoạt động (Activity Flow):** Đồng bộ hóa toàn bộ tiến trình học tập của học sinh trong từng hoạt động theo phom mẫu khép kín:
    $$\text{Giao nhiệm vụ} \rightarrow \text{Thực hiện} \rightarrow \text{Báo cáo} \rightarrow \text{Kết luận}$$
    *   *Giao nhiệm vụ:* Giáo viên cung cấp yêu cầu rõ ràng, đạo cụ học tập và giới hạn thời gian.
    *   *Thực hiện:* Học sinh làm việc cá nhân/kíp trực, thảo luận hoặc tương tác với slide.
    *   *Báo cáo:* Đại diện nhóm trình bày kết quả, phản biện chéo giữa các kíp trực.
    *   *Kết luận:* Giáo viên hoặc hệ thống chốt đáp án chuẩn y khoa và đúc kết nguyên tắc cốt lõi.

### 1.2. Thiết kế tiến trình nhận thức (Pedagogical Scaffolding)
Để học sinh không bị ngộp trước lượng thông tin chuyên ngành lớn, tiến trình bài giảng phải được thiết kế dạng giàn giáo nâng dần theo các cấp độ nhận thức của Bloom:
*   **Nhận biết:** Tiếp cận trực giác qua các trò chơi đơn giản (như thẻ màu Đỏ/Xanh) để kích hoạt sự tò mò và tính cảnh giác ban đầu.
*   **Thông hiểu:** Sử dụng trò chơi ghép đôi giữa "Thẻ chữ tình huống/Triệu chứng" và "Hình ảnh mô phỏng thực tế/Tin nhắn giả lập" để học sinh tự rút ra các từ khóa cốt lõi.
*   **Đánh giá nguy cơ:** Phân tích hậu quả sinh lý hoặc rủi ro thực tế của các hành vi xử lý sai lầm để học sinh hiểu sâu sắc nguyên nhân *"tại sao"* phải hành động đúng cách.
*   **Vận dụng:** Đưa học sinh vào các tình huống thực tế giả định để thực hành sắm vai (role-play) hoặc củng cố kiến thức bằng game phân loại tương tác (Nên/Không nên).

### 1.3. Trực quan hóa & Kỹ nghệ Viết Prompt tạo ảnh (Visual & AI Prompt Engineering)
*   **Chuyển đổi văn bản thành giao diện số (Mock UI Design):** Thay vì các slide lý thuyết chữ dài dòng, hãy trực quan hóa các tình huống dưới dạng hình ảnh giả lập màn hình điện thoại, máy tính bảng hoặc máy tính cá nhân để tạo cảm giác thực tế.
*   **Tập trung vào hành động & Thiết kế Text lồng ghép:** Viết các prompt tạo ảnh AI với cấu trúc chặt chẽ để tạo các ảnh minh họa chuẩn Comic Line-Art hoặc 2D Flat Vector sạch sẽ:
    *   *Phong cách:* 2D flat vector, colors bright, clean background.
    *   *Lồng ghép chữ:* Tích hợp sẵn các biểu ngữ chữ tiếng Việt viết hoa nổi bật (như `CHỤP MÀN HÌNH`, `XÓA TIN NHẮN`, `SƠ CỨU NÓNG`) giúp học sinh dễ dàng "quét nhanh thông tin" (scannable) khi chơi game tương tác.
    *   *Định dạng:* Chỉ rõ tỉ lệ ảnh (ví dụ: `--ar 16:9`).

### 1.4. Đơn giản hóa quy trình bằng sơ đồ hóa (Simplification & Schematization)
*   **Rút gọn để dễ nhớ:** Chắt lọc các quy trình y khoa/kỹ năng dài dòng thành sơ đồ tuần tự ngắn gọn (ví dụ: Quy trình 3 bước xử lý nhanh: **Chụp màn hình $\rightarrow$ Hỏi ý kiến người lớn $\rightarrow$ Xóa tin nhắn**).
*   **Hình thành phản xạ tự vệ dứt khoát:** Việc đóng gói quy trình thành sơ đồ khối tuần tự giúp học sinh dễ dàng ghi nhớ và hình thành phản xạ dứt khoát, có hệ thống trong thực tế.

### 1.5. Kịch bản hóa trải nghiệm thực tế (Active Learning & Role-play Scripting)
*   **Thiết kế hội thoại thực chiến:** Chuyển các tình huống giả định thành những kịch bản sắm vai có lời thoại cụ thể cho từng nhân vật (Bạn nhỏ - Người lớn, Bác sĩ - Bệnh nhân).
*   **Tương tác vật lý kích hoạt trí nhớ vận động (Motor Memory):** Kết hợp sử dụng đạo cụ vật lý (mô hình điện thoại giấy, băng gạc vải) để học sinh trực tiếp thực hiện hành động (nhấn nút chụp ảnh ảo, quấn băng gạc hướng tim). Việc này biến lý thuyết khô khan thành một buổi tập huấn kỹ năng sinh tồn thực chiến.

---

## 2. Quy tắc và Ràng buộc Kiểm định Chất lượng Slide (Nova Hospital QA Rules)

Mọi slide được đề xuất và phát triển dựa trên concept này bắt buộc phải tuân thủ nghiêm ngặt các quy tắc QA sau:

### 2.1. Quy tắc "Không Trình bày sau Game"
*   Khi chuyển đổi hoạt động game/trắc nghiệm/khảo sát số hóa (mã `TH01`) có kèm kết quả đáp án chuẩn y khoa (mã `ĐA01`), tuyệt đối **không** chèn slide trình bày/giải thích/phản biện (mã `TB01`) ở giữa.
*   Học sinh chơi game xong phải được điều hướng trực tiếp tới slide đáp án chuẩn để đối chiếu kết quả tức thời, đảm bảo tính liền mạch và hiệu quả sư phạm.

### 2.2. Kiểm soát viết hoa và chuẩn chính tả tiếng Việt
*   **Viết hoa sau số thứ tự:** Ký tự chữ cái đầu tiên đứng sau ký số thứ tự và dấu chấm/gạch đầu dòng bắt buộc phải viết hoa.
    *   *Đúng:* `1. Sơ cứu vết thương`, `- Tạm dừng phản ứng`.
    *   *Sai:* `1. sơ cứu vết thương`, `- tạm dừng phản ứng`.
*   **Viết thường từ chuyên ngành ở giữa câu:** Nghiêm cấm viết hoa tùy tiện từ ngữ chuyên ngành ở giữa câu.
    *   *Đúng:* "...nguy cơ nhiễm trùng uốn ván khi đắp lá bàng..."
    *   *Sai:* "...nguy cơ nhiễm trùng Uốn Ván khi đắp Lá Bàng..."
*   **Đồng bộ nhất quán chính tả:** Đảm bảo sử dụng chữ `y` dài trong từ `kỹ thuật` (tránh viết `kĩ thuật` không nhất quán) và đồng bộ thông tin giới tính/emoji của nhân vật trong suốt bài học.

### 2.3. Tiêu chuẩn thiết kế Game nối SVG trên Smartboard
*   Đối với các hoạt động phân tích/chẩn đoán kết nối cặp thông tin, ưu tiên sử dụng cơ chế game nối (chạm chọn thẻ ở hai cột) được biểu diễn trực quan bằng đường vẽ SVG động thay cho kéo thả truyền thống.
*   Giao diện chạm chọn đảm bảo độ nhạy 100% trên bảng thông minh cảm ứng (Touch Smartboard) và phải tự động vẽ lại tọa độ kết nối khi màn hình co giãn (`window.resize`).
