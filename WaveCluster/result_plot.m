clear; clc;
hold on;

coordinate = sprintf('G:/matlab coding/wavecluster_code/sampleInput.txt');
[uid, date, time, lon, lat] = textread(coordinate, '%s%s%s%f%f');
cluster_id = sprintf('G:/matlab coding/wavecluster_code/result.txt');
cid = textread(cluster_id, '%n');
h1 = plot(lon, lat, 'k.');
colors = [  % 25 colors
    0 0 0.5
    0 0 1
    0 0.5 0
    0 0.5 0.5
    0 0.5 1
    0 1 0
    0 1 0.5
    0 1 1
    0.5 0 0
    0.5 0 0.5
    0.5 0 1
    0.5 0.5 0
    0.5 0.5 0.5
    0.5 0.5 1
    0.5 1 0
    0.5 1 0.5
    0.5 1 1
    1 0 0
    1 0 0.5
    1 0 1
    1 0.5 0
    1 0.5 0.5
    1 0.5 1
    1 1 0
    1 1 0.5];
NUM_CLUSTERS = max(cid);
for i = 1:length(cid)
    if cid(i) ~= 0
        ci = mod(cid(i), 25);
    end
    if ci == 0
        ci = 25;
    end
    plot(lon(i), lat(i), '.', 'color', colors(ci,:));
    % text(lng(1),r lat(1), num2str(i));
end
%title('DBSCAN�ص������ - ŦԼ�����ĵ���', 'fontsize', 20);
xlabel('���� / ��W', 'fontsize', 16);
ylabel('γ�� / ��N', 'fontsize', 16);
%axis([-74.05 -73.94 40.65 40.80]);  % NewYork City Area
legend(h1, '\fontsize{16}������', 2);
set(gca, 'fontsize', 16);