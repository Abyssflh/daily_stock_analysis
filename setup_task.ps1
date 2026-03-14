# 创建每日股票分析定时任务
$Action = New-ScheduledTaskAction -Execute "C:\Users\Administrator\daily_stock_analysis\run_analysis.bat"

# 每天 18:00 运行
$Trigger = New-ScheduledTaskTrigger -Daily -At "18:00"

# 任务设置
$Settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable

# 注册任务
Register-ScheduledTask -TaskName "DailyStockAnalysis" -Action $Action -Trigger $Trigger -Settings $Settings -Description "每日股票分析报告"

Write-Host "定时任务创建成功！每天 18:00 自动运行股票分析"
