% 电力参数计算程序
% 用MATLAB的帮助下能够计算不同相位角下的有功功率、无功功率和视在功率，并进行可视化

clc; % 清空命令窗口
clear; % 清空工作区变量

% 显示程序信息
disp('===== 电力参数计算器（带绘图功能）=====');
disp('该程序将计算不同相位角下的电力参数并绘图：'); 
disp('- 有功功率 (P)'); 
disp('- 无功功率 (Q)'); 
disp('- 视在功率 (S)');
disp(' '); 

% 从用户获取输入
voltage = input('请输入电压值(V): '); 
current = input('请输入电流值(A): '); 

% 定义相位角范围 （0到90度，步长为1度）
phase_deg = 0:1:90; % 相位角（角度）
phase_rad = phase_deg*pi/180; % 转换为弧度制


% 计算功率参数
apparent_power = voltage * current; 
active_power = voltage * current * cos(phase_rad); 
reactive_power = voltage * current * sin(phase_rad); 
power_factor = cos(phase_rad); 

% 输出主要计算结果
disp(' '); 
disp('===== 关键计算结果 ====='); 
fprintf('视在功率: %.2f VA\n', apparent_power); 
fprintf('当相位角为0度时，有功功率最大: %.2f W\n', max(active_power)); 
fprintf('当相位角为90度时，无功功率最大: %.2f var\n', max(reactive_power)); 

% 进行绘图。绘制功率与相位角的关系图
figure('Name','电力参数与相位角关系图','NumberTitle','off'); 
plot(phase_deg, active_power, 'b-', 'LineWidt', 2); 
hold on; 
plot(phase_deg, reactive_power, 'r--', 'LineWidth', 2); 
plot(phase_deg, apparent_power * ones(size(phase_deg)), 'g-.', 'LineWidth', 2); 
grid on; 
xlabel('相位角（度）')
hold off; 