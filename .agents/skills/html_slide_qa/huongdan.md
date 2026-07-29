# Hướng Dẫn Cài Đặt & Sử Dụng Skill: html_slide_qa

## 1. Giới thiệu
Skill `html_slide_qa` chịu trách nhiệm tự động kiểm tra viết hoa chữ cái đầu dòng (qua script Python) và rà soát lỗi chính tả/ngữ pháp tiếng Việt cho các slide bài giảng tương tác HTML.

## 2. Cấu trúc Skill
```
html_slide_qa/
├── SKILL.md                  # Hướng dẫn quy trình QA chi tiết
├── huongdan.md               # Tệp hướng dẫn cài đặt này
└── scripts/
    └── check_capitalization.py # Script trích xuất text & check lỗi viết hoa
```

## 3. Hướng dẫn Cài đặt sang Dự án Mới
1. Copy toàn bộ thư mục `html_slide_qa` vào thư mục `.agents/skills/` của dự án mới.
2. Đảm bảo môi trường đã cài đặt **Python 3.8+** và thư viện **BeautifulSoup4**:
   ```bash
   pip install beautifulsoup4
   ```

## 4. Cách Sử dụng
- **Chạy kiểm tra tự động:**
  ```powershell
  python .agents/skills/html_slide_qa/scripts/check_capitalization.py
  ```
- Script sẽ xuất danh sách dòng vi phạm viết hoa đầu dòng và trích xuất text sạch ra tệp `.agents/temp_slide_text.txt`.
- Agent QA (`html_slide_qa_agent`) hoặc người dùng sẽ rà soát tệp `.agents/temp_slide_text.txt` để phát hiện lỗi chính tả/ngữ pháp và lập bảng báo cáo QA Report.
