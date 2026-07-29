---
name: lap_trinh_slide_tuong_tac
description: Hướng dẫn kỹ thuật lập trình HTML/CSS/JS cho slide tương tác, tối ưu hóa Smartboard (hitbox >=70px, game nối SVG động), Web Audio API sinh âm thanh và tuân thủ các quy tắc QA dự án.
---

# Kỹ năng Lập trình Slide Tương tác (Interactive Slide Development)

Kỹ năng này hướng dẫn lập trình viên phát triển các slide bài giảng tương tác bằng HTML, CSS và JavaScript, tối ưu hóa cho màn hình cảm ứng tương tác thông minh (Touch Smartboard), tích hợp âm thanh Web Audio API và tuân thủ các tiêu chuẩn kiểm định chất lượng (QA).

---

## 1. Công nghệ cốt lõi & Thiết kế Giao diện (Tech Stack & UI)

*   **HTML5 & CSS3:** Sử dụng cấu trúc HTML5 ngữ nghĩa. Thiết kế giao diện hiện đại (Glassmorphism, Neon highlights, Sleek Dark Mode cho Cyber-medical UI).
*   **Vanilla JavaScript:** Không sử dụng các thư viện ngoài cồng kềnh. Sử dụng mô hình lưu trữ trạng thái đơn giản (State Management) để cập nhật dữ liệu của trò chơi và các bước xử lý.
*   **Thiết kế Đáp ứng (Responsive Design):** Đảm bảo layout hiển thị tốt trên cả màn hình máy tính cá nhân và bảng tương tác lớp học cỡ lớn.

---

## 2. Tối ưu hóa cho Bảng tương tác Thông minh (Touch Smartboard)

Màn hình cảm ứng ở trường học thường có độ trễ lớn và độ nhạy kém ở các vùng biên. Lập trình viên phải tuân thủ hai quy tắc kỹ thuật sau:

### A. Kích thước Hitbox tối thiểu
*   Tất cả các vùng tương tác (nút bấm, thẻ từ khóa, ô lựa chọn) bắt buộc phải có kích thước tối thiểu là **$70\text{px} \times 70\text{px}$** để học sinh dễ chạm bằng ngón tay hoặc bút chuyên dụng mà không bị lệch hoặc trượt.

### B. Game nối SVG động bằng chạm chọn (Tap-to-Connect)
*   **Tránh dùng Drag & Drop:** Kéo thả truyền thống rất dễ bị trượt mục tiêu trên màn hình Smartboard bụi bẩn. Thay vào đó, hãy lập trình cơ chế chạm chọn: Học sinh chạm thẻ ở cột A (nguồn) ➔ chạm tiếp thẻ ở cột B (đích) để nối.
*   **Vẽ đường nối SVG động:**
    Sử dụng một container `<svg id="connector-svg">` đặt tuyệt đối (`position: absolute; pointer-events: none;`) bao phủ khu vực chơi game. Khi học sinh chọn cặp thẻ, tính toán tọa độ tâm của hai thẻ dựa trên `getBoundingClientRect()` và vẽ thẻ `<line>` hoặc `<path>` tương ứng.
*   **Mã nguồn mẫu cập nhật tọa độ khi co giãn màn hình (`window.resize`):**
    ```javascript
    // Hàm cập nhật lại tọa độ các đường nối khi người dùng resize màn hình
    window.addEventListener('resize', () => {
        clearLines(); // Xóa các đường vẽ cũ
        activeConnections.forEach(conn => {
            const el1 = document.getElementById(conn.from);
            const el2 = document.getElementById(conn.to);
            if (el1 && el2) {
                drawLine(el1, el2, conn.color);
            }
        });
    });

    function drawLine(el1, el2, color) {
        const svg = document.getElementById('connector-svg');
        const rect = svg.getBoundingClientRect();
        const r1 = el1.getBoundingClientRect();
        const r2 = el2.getBoundingClientRect();

        const x1 = r1.left + r1.width / 2 - rect.left;
        const y1 = r1.top + r1.height / 2 - rect.top;
        const x2 = r2.left + r2.width / 2 - rect.left;
        const y2 = r2.top + r2.height / 2 - rect.top;

        const line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
        line.setAttribute('x1', x1);
        line.setAttribute('y1', y1);
        line.setAttribute('x2', x2);
        line.setAttribute('y2', y2);
        line.setAttribute('stroke', color);
        line.setAttribute('stroke-width', '4');
        svg.appendChild(line);
    }
    ```

---

## 3. Web Audio API sinh âm thanh nhân tạo

Tránh sử dụng các tệp tin âm thanh vật lý `.mp3` hoặc `.wav` nặng nề. Hãy sử dụng Web Audio API để sinh âm thanh trực tiếp từ mã nguồn:

*   **Quy tắc kích hoạt (Browser Security):** Trình duyệt cấm phát âm thanh tự động. Hãy khởi tạo `AudioContext` sau sự kiện click chuột đầu tiên của giáo viên hoặc học sinh.
*   **Còi hú báo động (Siren Alarm):**
    ```javascript
    function playSiren() {
        const audioCtx = new (window.AudioContext || window.webkitAudioContext)();
        let osc1 = audioCtx.createOscillator();
        let osc2 = audioCtx.createOscillator();
        let gainNode = audioCtx.createGain();

        osc1.type = 'sawtooth';
        osc2.type = 'sine';

        osc1.connect(gainNode);
        gainNode.connect(audioCtx.destination);

        // Biến thiên tần số tạo tiếng còi hú báo động đỏ
        osc1.frequency.setValueAtTime(800, audioCtx.currentTime);
        osc1.frequency.linearRampToValueAtTime(1200, audioCtx.currentTime + 1.2);
        osc1.frequency.linearRampToValueAtTime(800, audioCtx.currentTime + 2.4);

        osc1.start();
        setTimeout(() => { osc1.stop(); }, 2500);
    }
    ```

---

## 4. Ràng buộc Kiểm định Chất lượng (QA Compliance)

Mã nguồn HTML slide bắt buộc phải được QA tự động hoặc thủ công để đạt tiêu chuẩn bàn giao:

### A. Quy tắc "Không Trình bày sau Game"
*   Sau khi hoàn thành slide game `TH01` (ví dụ: kéo thả hành vi, chọn từ khóa bệnh án), nút nộp bài phải điều hướng trực tiếp sang slide đáp án `ĐA01`. Tuyệt đối không chèn các slide lý thuyết giải thích hoặc phản biện `TB01` ở giữa.

### B. Kiểm soát chính tả tiếng Việt nghiêm ngặt
*   **Viết hoa sau số thứ tự:** Bất kỳ thẻ HTML nào chứa danh sách có số hoặc dấu chấm đầu dòng (ví dụ: `1.`, `2.`, `-`) thì ký tự đầu tiên của từ đứng sau đó bắt buộc phải viết hoa.
*   **Viết thường từ chuyên ngành ở giữa câu:** Nghiêm cấm viết hoa ngẫu hứng từ ngữ chuyên ngành ở giữa câu. Các từ như `uốn ván`, `sơ cứu`, `bỏng`, `đứt tay` phải được viết thường nếu đứng ở giữa câu trong thẻ HTML.
*   **Đồng bộ nhân vật:** Nếu slide 11 khai báo nhân vật `Minh Quân` là bé trai `👦`, các slide đáp án tiếp theo không được đổi thành bé gái hoặc đổi tên viết sai chính tả.
