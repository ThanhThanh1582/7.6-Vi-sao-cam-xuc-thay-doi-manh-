# QUẢN LÝ AGENT VÀ SKILL DỰ ÁN SLIDE BÀI GIẢNG Y KHOA (NOVA HOSPITAL)

Tệp này quy định cấu trúc tổ chức, vai trò các Agent, danh sách Skill tương ứng và hướng dẫn cài đặt/chuyển giao sang dự án mới.

---

## 1. THỐNG KÊ DANH SÁCH AGENT & SKILL SỬ DỤNG

### 1.1. `developer_agent` (Agent Lập Trình & Phát Triển Slide)
- **Vai trò:** Lập trình viên chính xây dựng giao diện HTML/CSS/JS, thiết kế Smartboard UI, tích hợp Web Audio API và vận hành luồng slide 8 giai đoạn.
- **Danh sách Skill sử dụng:**
  1. `lap_trinh_slide_tuong_tac`: Kỹ thuật lập trình HTML/CSS/JS, Smartboard Hitbox $\ge 70\text{px}$, Game nối SVG Tap-to-Connect, Web Audio API.
  2. `bac_si_kham_benh`: Thiết kế & triển khai Tiết 1 theo concept Bác sĩ Khám bệnh.
  3. `bac_si_cong_dong`: Thiết kế & triển khai Tiết 2 theo concept Bác sĩ Cộng đồng (Patient Grid).
  4. `chuyen_gia_truyen_thong`: Thiết kế & triển khai Tiết 3 theo concept Truyền thông Sức khỏe.
  5. `chuyen_giao_an_sang_mo_ta_slide`: Chuyển kịch bản giáo án thô thành Đặc tả Slide UI/UX chi tiết.

### 1.2. `html_slide_qa_agent` (Agent Kiểm Định Chất Lượng QA)
- **Vai trò:** Chuyên viên QA tự động hóa kiểm tra viết hoa đầu dòng, rà soát chính tả/ngữ pháp tiếng Việt và bắt lỗi quy tắc luồng slide.
- **Danh sách Skill sử dụng:**
  1. `html_slide_qa`: Chạy kịch bản `scripts/check_capitalization.py` để trích xuất văn bản sạch `.agents/temp_slide_text.txt` và lập QA Report.

### 1.3. `su_pham_agent` (Agent Biên Soạn Giáo Án & Sư Phạm)
- **Vai trò:** Chuyên gia nội dung thiết kế bài dạy kỹ năng sống chuẩn Công văn 5512 Bộ GD&ĐT và xây dựng tiến trình sư phạm tích cực.
- **Danh sách Skill sử dụng:**
  1. `tong_hop_kien_thuc_ky_nang`: Đơn giản hóa kiến thức y khoa/chuyên ngành cho học sinh THCS.
  2. `thiet_ke_tien_trinh_bai_giang`: Xây dựng tiến trình bài dạy tích cực.
  3. `soan_giao_an_chuan`: Soạn giáo án theo chuẩn CV 5512.
  4. `de_xuat_hoat_dong_concept_bac_si`: Đề xuất hoạt động nhập vai concept Bác sĩ.

---

## 2. QUY TẮC PHÁT TRIỂN & KIỂM ĐỊNH BẮT BUỘC

1. **Kiểm định trước khi hoàn tất:** Mỗi khi thay đổi `index.html`, bắt buộc phải chạy `python .agents/skills/html_slide_qa/scripts/check_capitalization.py`.
2. **Quy tắc Viết hoa:**
   - Viết hoa ký tự chữ cái đầu tiên đứng sau số thứ tự/gạch đầu dòng (Ví dụ: `1. Sơ cứu`).
   - Viết thường từ ngữ chuyên ngành ở giữa câu (Ví dụ: `bệnh uốn ván`, `hạch hạnh nhân`).
3. **Quy tắc "Không Trình Bày Sau Game":**
   - Game / Trắc nghiệm (TH01) $\rightarrow$ Slide Đáp án (ĐA01) trực tiếp. Không chèn Slide TB01 ở giữa.

---

## 3. HƯỚNG DẪN DỊCH CHUYỂN SANG DỰ ÁN MỚI (EXPORT GUIDELINES)

Khi chuyển giao hệ thống Agent và Skill này sang một dự án khác:
1. Sao chép toàn bộ thư mục `.agents/` sang thư mục gốc của dự án mới.
2. Mỗi thư mục skill nằm tại `.agents/skills/<ten_skill>/` đã có sẵn file `huongdan.md` chứa hướng dẫn cài đặt và sử dụng riêng.
3. Cài đặt dependency bắt buộc cho QA Script:
   ```bash
   pip install beautifulsoup4
   ```
