%Generate two clouds of normally distributed points.
a = [randn(100, 2); randn(70, 2)+7];
 
%Cluster and display results on a grouped scatter plot.
%Points in "cluster 0" are below the density threshold and are considered outliers.
gscatter(a(:,1), a(:,2), WaveCluster(a, [], 20, '20%', 1, 'bior2.2', 1))
 
%Load some non-spherical data and cluster at a coarser resolution (i.e. level 2 wavelet transform).
load wavecluster_example_data
figure
gscatter(cubicclouds(:,1), cubicclouds(:,2), WaveCluster(cubicclouds, [], 120, '10%', 2, 'bior2.2', 1))
