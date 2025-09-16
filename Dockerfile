FROM n8nio/n8n:latest

# Временно под root, чтобы поставить пакеты
USER root

# FFmpeg + libass (для фильтра subtitles) + fontconfig + шрифты (кириллица)
RUN apk add --no-cache \
    ffmpeg \
    libass \
    fontconfig \
    ttf-dejavu \
    noto-fonts

# Возврат к пользователю n8n
USER node

