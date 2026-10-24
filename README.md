# Polaris

Polaris giúp người mới khám phá lĩnh vực CNTT, lộ trình học, nghề nghiệp và tài nguyên; Wisp là trợ lý học tập và trò chuyện.

## Chạy trên máy tính

1. Cài Node.js 24 trở lên.
2. Mở thư mục này trong File Explorer và bấm đúp start-polaris.bat.
3. Giữ cửa sổ máy chủ đang mở. Polaris tự chọn cổng 8787–8790 còn trống rồi mở trang ở địa chỉ đó (thường là **http://127.0.0.1:8787/**). Nếu máy chủ cũ đang chiếm cổng, bản mới sẽ dùng cổng kế tiếp.
4. Đóng cửa sổ máy chủ để dừng. Sau khi cập nhật mã, đóng máy chủ cũ rồi mở lại start-polaris.bat để nạp phiên bản mới.

Không mở index.html hoặc Polaris.html trực tiếp bằng file:// để dùng tài khoản, hồ sơ hay nhắn tin. Hãy dùng start-polaris.bat để khởi động phiên bản máy chủ mới; script sẽ tự chọn cổng còn trống để tránh kết nối nhầm máy chủ cũ. Polaris.html là bản gộp để xem giao diện; API tài khoản vẫn cần máy chủ Node.js.

## Tài khoản và quyền riêng tư

- Đăng ký bằng tên tài khoản, mật khẩu từ 8 ký tự, nhập lại mật khẩu và có thể tải avatar. Mật khẩu được băm; dữ liệu được giữ trong .polaris-data/polaris.sqlite.
- Mỗi tài khoản có ID công khai gồm 10 chữ số, bắt đầu từ 1000000000 (ví dụ tài khoản đầu tiên). Có thể sao chép ID trong Trang cá nhân, rồi tìm bạn theo tên hoặc ID.
- Người dùng chọn hồ sơ công khai với mọi người, chỉ bạn bè hoặc chỉ bản thân. Ngày sinh và địa chỉ luôn bị ẩn khỏi hồ sơ công khai.
- Đổi mật khẩu trong Trang cá nhân. Khi tạo tài khoản, Polaris hiện mã khôi phục một lần; hãy lưu lại cẩn thận. Người dùng cũ có thể tạo mã khôi phục trong mục Bảo mật nếu còn đăng nhập. Mã khôi phục dùng một lần.
- Phiên đăng nhập được giữ qua lần khởi động lại máy chủ. Avatar PNG/JPG/WEBP/GIF tối đa 2 MB.

## Học tập và giao diện

- Tiến độ lộ trình được lưu trên tài khoản và đồng bộ khi đăng nhập; khi chưa đăng nhập, tiến độ được giữ trên thiết bị.
- Trang cá nhân có 17 nền minh họa, có Bình minh trên núi và tùy chọn Mặc định Polaris. Tải ảnh riêng lên sẽ đưa màu thẻ về tông mặc định để dễ đọc.
- Bộ chọn có 25 ngôn ngữ và ô tìm kiếm. Wisp có thể trả lời bằng ngôn ngữ đã chọn khi bật AI; một số nội dung học và phần giao diện vẫn chưa được dịch đầy đủ.
- Polaris có các trang Tổng quan, Khám phá lĩnh vực, Lộ trình học, Nghề nghiệp, Tài nguyên và Cộng đồng.

## Wisp

Không có khóa API, Wisp chạy ở chế độ demo: xử lý phép tính, một số kiến thức CNTT nhập môn và hội thoại theo mẫu; không thể trả lời đáng tin cậy mọi câu hỏi mở. Lịch sử Wisp được lưu khi đăng nhập. Để bật AI và tra cứu web có trích dẫn, sao chép .env.example thành .env, điền OPENAI_API_KEY, lưu rồi khởi động lại máy chủ. Khóa chỉ được dùng ở máy chủ, không đưa vào JavaScript trình duyệt. Có thể chọn model bằng OPENAI_MODEL.

Tra cứu AI có thể sai; hãy mở các nguồn trích dẫn để kiểm tra thông tin quan trọng. API key và chi phí do tài khoản OpenAI quản lý. Xem [hướng dẫn API](https://developers.openai.com/api/docs/quickstart) và [web search](https://developers.openai.com/api/docs/guides/tools-web-search).

## Cộng đồng và triển khai công khai

Cộng đồng có phòng chat chung theo thời gian thực, lời mời kết bạn, hồ sơ người học, trạng thái online và trang nhắn tin riêng. Người dùng có thể chặn hoặc báo cáo tài khoản. Tin nhắn bị lọc tự động; báo cáo được lưu để quản trị viên xem xét, nhưng hiện chưa có bảng điều khiển hay nhân sự trực xử lý báo cáo. Bộ lọc có thể bỏ sót hoặc chặn nhầm và không thay cho kiểm duyệt.

Hiện tài khoản và chat chỉ dùng chung giữa người truy cập cùng máy chủ. 127.0.0.1 chỉ mở trên máy tính chạy Polaris. Để dùng qua Internet, triển khai Node.js 24+ lên hosting với HTTPS và ổ đĩa lưu trữ bền vững; bản này chưa tự xuất bản ra Internet. Chưa có xác minh email, khôi phục qua email hoặc mã hóa đầu cuối. Không dùng lại mật khẩu quan trọng của bạn.