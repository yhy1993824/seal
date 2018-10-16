clc; clear; close all;
path = genpath('./');
addpath(path);

%% Visualize SBD GTs
visualize_gt('../../../data/sbd-preprocess/data_proc', '../../../data/sbd-preprocess/data_proc/test_inst_orig.mat', 'colors_sbd.mat', '../../../exper/sbd/result/visualize/test/inst/gt_orig')

%% Visualize Cityscapes GTs
visualize_gt('../../../data/cityscapes-preprocess/data_proc', '../../../data/cityscapes-preprocess/data_proc/train.mat', 'colors_city.mat', '../../../exper/cityscapes/result/visualize/train')
visualize_gt('../../../data/cityscapes-preprocess/data_proc', '../../../data/cityscapes-preprocess/data_proc/val.mat', 'colors_city.mat', '../../../exper/cityscapes/result/visualize/val')