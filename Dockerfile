FROM n8nio/n8n:latest

# Временно под root, чтобы поставить пакеты
USER root

# FFmpeg + libass (фильтр субтитров) + fontconfig + шрифты (DejaVu с кириллицей)
RUN apk add --no-cache \
    ffmpeg \
    libass \
    fontconfig \
    ttf-dejavu

# Возврат к пользователю n8n
USER node



