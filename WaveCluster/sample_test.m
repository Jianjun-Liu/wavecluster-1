clear; clc;

path_in = sprintf('/Users/xiongjunjie/Downloads/wavecluster_code/StayPoint2.txt')
 [uid, lat, lon, date, time, date2, time2] = textread(path_in, '%s%f%f%s%s%s%s');
% [uid, date, time, lon, lat] = textread(path_in, '%s%s%s%f%f');
cid = WaveCluster([lon, lat], [], 5550, '98%', 1, 'bior2.2', 1);
path_out = sprintf('/Users/xiongjunjie/Downloads/wavecluster_code/result.txt');
fileout = fopen(path_out, 'wt+');
m = length(cid);
for j = 1:m
    fprintf(fileout, '%d\n', cid(j));
end
fclose(fileout);