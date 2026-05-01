@echo off
chcp 65001 >nul
echo ========================================
echo   硬件知识库 - 清理脚本
echo ========================================
echo.

set "BASE=%~dp0docs\zh"

echo [1/3] 删除多语言文件夹 (en/es/ar)...
if exist "%~dp0docs\en" (
    rmdir /s /q "%~dp0docs\en"
    echo   - 已删除 docs\en
)
if exist "%~dp0docs\es" (
    rmdir /s /q "%~dp0docs\es"
    echo   - 已删除 docs\es
)
if exist "%~dp0docs\ar" (
    rmdir /s /q "%~dp0docs\ar"
    echo   - 已删除 docs\ar
)

echo.
echo [2/3] 删除不需要的文档文件...

:: 博客
for %%f in (
    "blog"
) do (
    if exist "%~dp0docs\%%~f" rmdir /s /q "%~dp0docs\%%~f"
)

:: 生活记录 & 博客文章
for %%f in (
    "AI影响下未来的职业选择.md"
    "THEHack2019黑客马拉松.md"
    "Hack.init()黑客马拉松.md"
    "如何调制一杯鸡尾酒.md"
    "太阳高度角计算.md"
    "如何准备一个逃生背包.md"
    "读《黑客与画家》.md"
    "3D打印：ABS与PLA的区别.md"
    "Contact-and-Subscribe.md"
) do (
    if exist "%BASE%\%%~f" del "%BASE%\%%~f"
)

:: Homelab 系列
for %%f in ("%BASE%\Homelab-*") do del "%%f"
for %%f in ("%BASE%\搭建属于自己的HomeLab.md") do del "%%f"
for %%f in ("%BASE%\ESXi初始化指南.md") do del "%%f"
for %%f in ("%BASE%\Linux下挂载群晖NAS硬盘拓展空间（NFS）.md") do del "%%f"

:: 群晖 NAS
for %%f in ("%BASE%\使用frp访问群晖NAS.md") do del "%%f"
for %%f in ("%BASE%\使用RSSHub搭建RSS生成器（群晖Docker）.md") do del "%%f"
for %%f in ("%BASE%\使用Bitwarden搭建密码管理器（群晖Docker）.md") do del "%%f"
for %%f in ("%BASE%\使用acme.sh自动申请域名证书（群晖Docker）.md") do del "%%f"
for %%f in ("%BASE%\使用Calibre搭建在线书库（群晖Docker）.md") do del "%%f"
for %%f in ("%BASE%\使用Watchtower自动更新容器（群晖Docker）.md") do del "%%f"

:: 软件开发 (非嵌入式相关)
for %%f in (
    "HTML学习笔记.md"
    "CSS学习笔记.md"
    "JavaScript学习笔记.md"
    "双系统极简安装指南.md"
    "网页版串口助手的开发.md"
    "Ubuntu配置笔记.md"
    "ROS入门笔记.md"
    "机器视觉入门.md"
    "使用R语言进行数据分析.md"
    "自适应网页设计.md"
    "前端开发-环境搭建.md"
    "BookJourney-二手书商城小程序.md"
    "CentOS配置OhMyZsh.md"
    "Docusaurus极简部署指南.md"
    "Hugo极简搭建指南.md"
) do (
    if exist "%BASE%\%%~f" del "%BASE%\%%~f"
)

:: 技术流 / 生活技巧
for %%f in (
    "为什么你需要一个知识库.md"
    "个人知识库的搭建-基于Docusaurus.md"
    "如何用Markdown写一份简历.md"
    "Auto-i18n：使用ChatGPT的自动多语言翻译工具.md"
    "小米手机折腾记录.md"
    "使用Rclone同步网盘数据.md"
    "个人文案排版规范.md"
    "如何保存易逝的文字.md"
    "如何在iPad上运行VSCode.md"
    "MkDocs测试实验室.md"
    "Windows初始化与软件推荐（旧）.md"
    "Personal_Onboarding_Workflow_(Windows).md"
    "用树莓派架设云打印服务器.md"
    "用Graphviz绘制关系图.md"
    "RSS-高效率的阅读方式.md"
    "如何实现外网RDP远控（frp）.md"
    "技术文档写作规范.md"
    "把回忆放心交给GooglePhotos.md"
    "VSCode生产力指南-环境配置.md"
    "VSCode生产力指南-JupyterNotebook.md"
    "在浏览器上运行VSCode（旧）.md"
    "Linux如何配置开机自动运行脚本.md"
    "如何配一台电脑.md"
    "团队影像资源管理.md"
    "团队知识库的搭建.md"
    "Windows常用命令.md"
    "VSCode的便携模式.md"
    "开启Chrome（Edge）多线程下载.md"
    "移除Chrome（Edge）由组织管理.md"
    "避免Chrome（Edge）强制转换HTTPS.md"
    "用群晖自带反向代理实现HTTPS访问.md"
    "解决Google相册导出时间信息丢失问题.md"
    "使用gitignore忽略特殊文件.md"
    "如何批量拉取Git仓库更新.md"
    "如何用Markdown写公众号文章.md"
    "如何快速删除node_modules.md"
    "如何为公众号文章增加特效.md"
    "如何在Linux下使用微信.md"
    "如何打印出手写效果的文字.md"
    "如何从乐曲中分离音轨.md"
    "如何高效制作幻灯片.md"
    "卡片式写作.md"
    "如何撰写一份BRD.md"
    "用reveal.js制作幻灯片.md"
    "npm和Yarn换源加速国内访问.md"
    "Vue.js小技巧.md"
    "正则表达式实用语句.md"
    "GitHub改Host.md"
    "MSI主板开启虚拟化的方法.md"
    "删除GitHub仓库中某个文件夹.md"
    "定制SublimeText3.md"
    "用Vercel加速Pages服务.md"
    "如何快速制作一个启动盘.md"
    "使用VSCode进行远程开发.md"
    "Node.js和npm的安装与卸载（MacOS）.md"
) do (
    if exist "%BASE%\%%~f" del "%BASE%\%%~f"
)

:: 机器学习
for %%f in (
    "机器学习入门-基础流程.md"
    "机器学习入门-环境搭建.md"
    "机器学习入门-模型评估指标.md"
    "机器学习常用的包.md"
) do (
    if exist "%BASE%\%%~f" del "%BASE%\%%~f"
)

echo.
echo [3/3] 清理广告相关文件...
if exist "%~dp0docs\ads.txt" del "%~dp0docs\ads.txt"
if exist "%~dp0docs\zh\ads.txt" del "%~dp0docs\zh\ads.txt"
if exist "%~dp0docs\javascripts\adsense.js" del "%~dp0docs\javascripts\adsense.js"
if exist "%~dp0docs\javascripts\test-adsense.js" del "%~dp0docs\javascripts\test-adsense.js"
if exist "%~dp0docs\javascripts\accessibility.js" del "%~dp0docs\javascripts\accessibility.js"
if exist "%~dp0docs\javascripts\embed.js" del "%~dp0docs\javascripts\embed.js"
if exist "%~dp0docs\stylesheets\adsense.css" del "%~dp0docs\stylesheets\adsense.css"

echo.
echo ========================================
echo   清理完成！
echo ========================================
echo.
echo 保留的硬件相关内容：
echo   - 基础知识（电阻/电容/电感/二极管/三极管/MOS管等）
echo   - 嵌入式硬件（STM32/开发板/最小系统）
echo   - 电机驱动
echo   - 通信协议（UART/SPI/I2C/CAN/USB/以太网）
echo   - 电源设计（LDO/Buck/Boost）
echo   - 信号完整性 / EMC / ESD
echo   - 射频设计
echo   - 半导体测试（ATE）
echo   - 嵌入式开发（STM32 HAL/Arduino/FreeRTOS）
echo   - 软件工具（Git/Linux/Docker）
echo.
echo 你还需要手动检查：
echo   1. docs\zh\ 目录下是否还有遗留的不需要的文件
echo   2. docs\img\ 目录下的 logo 图片，替换成你自己的
echo   3. stylesheets\ 和 javascripts\ 下的广告相关文件
echo.
pause
