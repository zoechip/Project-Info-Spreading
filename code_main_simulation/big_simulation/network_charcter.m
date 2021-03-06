clc;clear;close all;

load('clustercoef.txt');
load('Nfriends.txt');
load('betweenness.txt');

figure(1);
hist(Nfriends,20)
xlabel('Number of Friends')
ylabel('Absolute Frequency')

figure(2);
hist(clustercoef,20)
xlabel('Local Clustering Coefficient')
ylabel('Absolute Frequency')

figure(3);
hist(betweenness,20)
xlabel('Inbetweenness Centrality')
ylabel('Absolute Frequency')

saveas(figure(1),'network_degreehist.png')
saveas(figure(2),'network_clusterhist.png')
saveas(figure(3),'network_centralityhist.png')