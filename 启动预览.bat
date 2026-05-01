@echo off
chcp 65001 >/dev/null
echo ========================================
echo   硬件知识库 - 启动预览
echo ========================================
echo.
echo 正在启动 MkDocs 服务...
echo 启动后浏览器打开: http://127.0.0.1:8000
echo.
echo 按 Ctrl+C 可停止服务
echo ========================================
echo.
D:\mkdocs-env\Scripts\mkdocs serve
pause
