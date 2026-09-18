# Trang tĩnh — không có máy chủ ứng dụng, không có cơ sở dữ liệu.
#
# Khai Dockerfile thay vì để nền tảng tự đoán: kho này chỉ chứa BẢN DỰNG, không
# có package.json, nên bộ dò tự động rất dễ hiểu nhầm thành dự án Node rồi đi
# tìm lệnh build không tồn tại.
FROM nginx:alpine
COPY . /usr/share/nginx/html
RUN rm -f /usr/share/nginx/html/Dockerfile
EXPOSE 80
