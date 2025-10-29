# Dockerfile để test CI/CD Hardening

# LỖI: Dùng tag 'latest'
# (Không đảm bảo build nhất quán, có thể kéo về phiên bản lỗi)
FROM ubuntu:latest

# LỖI: Thêm một secret trực tiếp vào image
ENV SUPER_SECRET_PASSWORD="my-secret-password-12345"

# LỖI: Thêm key vào image (cực kỳ nguy hiểm)
ADD id_rsa /root/.ssh/id_rsa

# LỖI: Chạy với quyền 'root' (mặc định)
# Đây là một rủi ro bảo mật lớn cho container
USER root

WORKDIR /app
COPY . /app
CMD ["bash"]
