clc; clear; close all;
path = genpath('../');
addpath(path)

%% Collect and plot SBD results
categories = categories_sbd();
% Original GT (Thin)
result_dir = {'../../../exper/sbd/result/evaluation/test/inst/gt_orig_thin/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_orig_thin/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_orig_thin/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_orig_thin/score_seal'};
plot_pr(result_dir, {'CASENet'; 'CASENet-S'; 'CASENet-C'; 'SEAL'}, '../../../exper/sbd/result/evaluation/test/inst/gt_orig_thin/pr_curve', categories, false);
% Original GT (Raw)
result_dir = {'../../../exper/sbd/result/evaluation/test/inst/gt_orig_raw/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_orig_raw/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_orig_raw/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_orig_raw/score_seal'};
plot_pr(result_dir, {'CASENet'; 'CASENet-S'; 'CASENet-C'; 'SEAL'}, '../../../exper/sbd/result/evaluation/test/inst/gt_orig_raw/pr_curve', categories, false);
% Refined ground truth (Thin)
result_dir = {'../../../exper/sbd/result/evaluation/test/inst/gt_reanno_thin/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_thin/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_thin/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_thin/score_seal'};
plot_pr(result_dir, {'CASENet'; 'CASENet-S'; 'CASENet-C'; 'SEAL'}, '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_thin/pr_curve', categories, false);
% Refined GT (Raw)
result_dir = {'../../../exper/sbd/result/evaluation/test/inst/gt_reanno_raw/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_raw/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_raw/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_raw/score_seal'};
plot_pr(result_dir, {'CASENet'; 'CASENet-S'; 'CASENet-C'; 'SEAL'}, '../../../exper/sbd/result/evaluation/test/inst/gt_reanno_raw/pr_curve', categories, false);

%% Collect and plot Cityscapes results
% categories = categories_city();
% % Original GT (Thin)
% result_dir = {'../../../exper/cityscapes/result/evaluation/test/gt_thin/score_casenet';...
%               '../../../exper/cityscapes/result/evaluation/test/gt_thin/score_casenet-s';...
%               '../../../exper/cityscapes/result/evaluation/test/gt_thin/score_seal'};
% plot_pr(result_dir, {'CASENet'; 'CASENet-S'; 'SEAL'}, '../../../exper/cityscapes/result/evaluation/test/gt_thin/pr_curve', categories, false);
% % Original GT (Raw)
% result_dir = {'../../../exper/cityscapes/result/evaluation/test/gt_raw/score_casenet';...
%               '../../../exper/cityscapes/result/evaluation/test/gt_raw/score_casenet-s';...
%               '../../../exper/cityscapes/result/evaluation/test/gt_raw/score_seal'};
% plot_pr(result_dir, {'CASENet'; 'CASENet-S'; 'SEAL'}, '../../../exper/cityscapes/result/evaluation/test/gt_raw/pr_curve', categories, false);