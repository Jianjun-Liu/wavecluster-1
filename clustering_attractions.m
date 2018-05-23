clear; clc;
addpath(genpath('../'));

[city, num_points, cplon, cplat] = textread('../data/citycenters.txt');
for i = 1:length(city)
    city_id = city(i);
    info = sprintf('------ city %d ------', city_id);
    disp(info);
    path_in = sprintf('../data/cities/%d.txt', city_id);
    [uid, date, time, lon, lat] = textread(path_in, '%s%s%s%f%f');
    cid = WaveCluster([lon, lat], [], 5550, '98%', 1, 'bior2.2', 1);
    path_out = sprintf('../data/cities_cid/%d.txt', city_id);
    fileout = fopen(path_out, 'wt+');
    m = length(cid);
    for j = 1:m
        fprintf(fileout, '%d\n', cid(j));
    end
    fclose(fileout);
end