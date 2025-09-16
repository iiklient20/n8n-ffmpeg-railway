FROM n8nio/n8n:latest

# Временно под root, чтобы поставить пакеты
USER root

# FFmpeg + шрифты (для субтитров с кириллицей)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ffmpeg fonts-dejavu-core fonts-noto-core && \
    rm -rf /var/lib/apt/lists/*

# Возврат к пользователю n8n
USER node
