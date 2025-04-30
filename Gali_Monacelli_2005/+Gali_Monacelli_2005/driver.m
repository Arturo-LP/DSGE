%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clearvars -global
clear_persistent_variables(fileparts(which('dynare')), false)
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'Gali_Monacelli_2005';
M_.dynare_version = '6.2';
oo_.dynare_version = '6.2';
options_.dynare_version = '6.2';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(2,1);
M_.exo_names_tex = cell(2,1);
M_.exo_names_long = cell(2,1);
M_.exo_names(1) = {'eps_star'};
M_.exo_names_tex(1) = {'{\varepsilon^{*}}'};
M_.exo_names_long(1) = {'World output shock'};
M_.exo_names(2) = {'eps_a'};
M_.exo_names_tex(2) = {'{\varepsilon^{a}}'};
M_.exo_names_long(2) = {'World output shock'};
M_.endo_names = cell(19,1);
M_.endo_names_tex = cell(19,1);
M_.endo_names_long = cell(19,1);
M_.endo_names(1) = {'pih'};
M_.endo_names_tex(1) = {'{\pi_h}'};
M_.endo_names_long(1) = {'Domestic inflation'};
M_.endo_names(2) = {'x'};
M_.endo_names_tex(2) = {'x'};
M_.endo_names_long(2) = {'Output gap'};
M_.endo_names(3) = {'y'};
M_.endo_names_tex(3) = {'y'};
M_.endo_names_long(3) = {'Output'};
M_.endo_names(4) = {'ynat'};
M_.endo_names_tex(4) = {'{\bar y}'};
M_.endo_names_long(4) = {'Natural output'};
M_.endo_names(5) = {'rnat'};
M_.endo_names_tex(5) = {'{\bar r}'};
M_.endo_names_long(5) = {'Natural interest rate'};
M_.endo_names(6) = {'r'};
M_.endo_names_tex(6) = {'r'};
M_.endo_names_long(6) = {'Nominal interest rate'};
M_.endo_names(7) = {'s'};
M_.endo_names_tex(7) = {'s'};
M_.endo_names_long(7) = {'Terms of trade'};
M_.endo_names(8) = {'pi'};
M_.endo_names_tex(8) = {'{\pi}'};
M_.endo_names_long(8) = {'CPI inflation'};
M_.endo_names(9) = {'p'};
M_.endo_names_tex(9) = {'p'};
M_.endo_names_long(9) = {'CPI level'};
M_.endo_names(10) = {'ph'};
M_.endo_names_tex(10) = {'{p_h}'};
M_.endo_names_long(10) = {'Domestic price level'};
M_.endo_names(11) = {'e'};
M_.endo_names_tex(11) = {'e'};
M_.endo_names_long(11) = {'Exchange rate'};
M_.endo_names(12) = {'ystar'};
M_.endo_names_tex(12) = {'{y^*}'};
M_.endo_names_long(12) = {'World output'};
M_.endo_names(13) = {'pistar'};
M_.endo_names_tex(13) = {'{\pi^{*}}'};
M_.endo_names_long(13) = {'World inflation'};
M_.endo_names(14) = {'n'};
M_.endo_names_tex(14) = {'{n}'};
M_.endo_names_long(14) = {'Employment'};
M_.endo_names(15) = {'nx'};
M_.endo_names_tex(15) = {'{nx}'};
M_.endo_names_long(15) = {'Net Exports'};
M_.endo_names(16) = {'real_wage'};
M_.endo_names_tex(16) = {'{w-p}'};
M_.endo_names_long(16) = {'Real Wage'};
M_.endo_names(17) = {'a'};
M_.endo_names_tex(17) = {'a'};
M_.endo_names_long(17) = {'Risk aversion'};
M_.endo_names(18) = {'c'};
M_.endo_names_tex(18) = {'c'};
M_.endo_names_long(18) = {'Domestic consumption'};
M_.endo_names(19) = {'deprec_rate'};
M_.endo_names_tex(19) = {'\Delta e_t'};
M_.endo_names_long(19) = {'Nominal depr. rate'};
M_.endo_partitions = struct();
M_.param_names = cell(11,1);
M_.param_names_tex = cell(11,1);
M_.param_names_long = cell(11,1);
M_.param_names(1) = {'sigma'};
M_.param_names_tex(1) = {'\sigma'};
M_.param_names_long(1) = {'risk aversion'};
M_.param_names(2) = {'eta'};
M_.param_names_tex(2) = {'\eta'};
M_.param_names_long(2) = {'Substitution home foreign'};
M_.param_names(3) = {'gamma'};
M_.param_names_tex(3) = {'\gamma'};
M_.param_names_long(3) = {'Substitution between foreign'};
M_.param_names(4) = {'phi'};
M_.param_names_tex(4) = {'\varphi'};
M_.param_names_long(4) = {'Inverse Frisch elasticity'};
M_.param_names(5) = {'epsilon'};
M_.param_names_tex(5) = {'\varepsilon'};
M_.param_names_long(5) = {'Elasticit of substitution'};
M_.param_names(6) = {'theta'};
M_.param_names_tex(6) = {'\theta'};
M_.param_names_long(6) = {'Calvo parameter'};
M_.param_names(7) = {'beta'};
M_.param_names_tex(7) = {'\beta'};
M_.param_names_long(7) = {'discount factor'};
M_.param_names(8) = {'alpha'};
M_.param_names_tex(8) = {'\alpha'};
M_.param_names_long(8) = {'openness'};
M_.param_names(9) = {'phi_pi'};
M_.param_names_tex(9) = {'\phi_\pi'};
M_.param_names_long(9) = {'Feedback Taylor rule inflation'};
M_.param_names(10) = {'rhoa'};
M_.param_names_tex(10) = {'\rho_a'};
M_.param_names_long(10) = {'autocorrelation TFP'};
M_.param_names(11) = {'rhoy'};
M_.param_names_tex(11) = {'\rho_y'};
M_.param_names_long(11) = {'autocorrelation foreign output'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 19;
M_.param_nbr = 11;
M_.orig_endo_nbr = 19;
M_.aux_vars = [];
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.eq_nbr = 19;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 6 25;
 0 7 26;
 0 8 0;
 0 9 0;
 0 10 0;
 0 11 0;
 1 12 0;
 0 13 0;
 2 14 0;
 3 15 0;
 0 16 0;
 4 17 27;
 0 18 0;
 0 19 0;
 0 20 0;
 0 21 0;
 5 22 0;
 0 23 0;
 0 24 0;]';
M_.nstatic = 12;
M_.nfwrd   = 2;
M_.npred   = 4;
M_.nboth   = 1;
M_.nsfwrd   = 3;
M_.nspred   = 5;
M_.ndynamic   = 7;
M_.dynamic_tmp_nbr = [5; 0; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , 'Equation (37), IS Curve' ;
  2 , 'name' , 'Equation (36), Philips Curve' ;
  3 , 'name' , 'Equation below (37)' ;
  4 , 'name' , 'Equation (35), definition natural level of output' ;
  5 , 'name' , 'Equation above (35), definition output gap' ;
  6 , 'name' , 'Equation (29)' ;
  7 , 'name' , 'Equation (14)' ;
  8 , 'name' , 'Equation 15 (first difference)' ;
  9 , 'name' , 'Constant world inflation, see p.724 (Given constant world prices)' ;
  10 , 'name' , 'Equation (22), employment' ;
  11 , 'name' , 'Equation (31), net exports' ;
  12 , 'name' , 'Equation (27), defines consumption' ;
  13 , 'name' , 'Above equation (11), defines real wage' ;
  14 , 'name' , 'stochastic process for technology p. 723' ;
  15 , 'name' , 'stochastic process for foreign output p. 723' ;
  16 , 'name' , 'exchange rate peg (PEG)' ;
  17 , 'name' , 'definition consumer price level' ;
  18 , 'name' , 'definition domestic price level' ;
  19 , 'name' , 'definition nominal depreciation rate of exchange rate' ;
};
M_.mapping.pih.eqidx = [1 2 7 8 18 ];
M_.mapping.x.eqidx = [1 2 5 ];
M_.mapping.y.eqidx = [5 6 10 12 ];
M_.mapping.ynat.eqidx = [4 5 ];
M_.mapping.rnat.eqidx = [1 3 ];
M_.mapping.r.eqidx = [1 ];
M_.mapping.s.eqidx = [6 7 8 11 12 ];
M_.mapping.pi.eqidx = [7 17 ];
M_.mapping.p.eqidx = [17 ];
M_.mapping.ph.eqidx = [18 ];
M_.mapping.e.eqidx = [16 ];
M_.mapping.ystar.eqidx = [3 4 6 15 ];
M_.mapping.pistar.eqidx = [9 ];
M_.mapping.n.eqidx = [10 13 ];
M_.mapping.nx.eqidx = [11 ];
M_.mapping.real_wage.eqidx = [13 ];
M_.mapping.a.eqidx = [3 4 10 14 ];
M_.mapping.c.eqidx = [12 13 ];
M_.mapping.deprec_rate.eqidx = [19 ];
M_.mapping.eps_star.eqidx = [15 ];
M_.mapping.eps_a.eqidx = [14 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 1;
M_.block_structure.block(1).endo_nbr = 5;
M_.block_structure.block(1).mfs = 5;
M_.block_structure.block(1).equation = [ 9 14 15 16 19];
M_.block_structure.block(1).variable = [ 13 17 12 11 19];
M_.block_structure.block(1).is_linear = true;
M_.block_structure.block(1).NNZDerivatives = 7;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [2 3 6 7 8 9 10 ];
M_.block_structure.block(2).Simulation_Type = 1;
M_.block_structure.block(2).endo_nbr = 2;
M_.block_structure.block(2).mfs = 2;
M_.block_structure.block(2).equation = [ 3 4];
M_.block_structure.block(2).variable = [ 5 4];
M_.block_structure.block(2).is_linear = true;
M_.block_structure.block(2).NNZDerivatives = 2;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [3 4 ];
M_.block_structure.block(3).Simulation_Type = 8;
M_.block_structure.block(3).endo_nbr = 4;
M_.block_structure.block(3).mfs = 4;
M_.block_structure.block(3).equation = [ 5 2 6 8];
M_.block_structure.block(3).variable = [ 3 2 7 1];
M_.block_structure.block(3).is_linear = true;
M_.block_structure.block(3).NNZDerivatives = 10;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [3 5 6 7 8 12 ];
M_.block_structure.block(4).Simulation_Type = 1;
M_.block_structure.block(4).endo_nbr = 1;
M_.block_structure.block(4).mfs = 1;
M_.block_structure.block(4).equation = [ 7];
M_.block_structure.block(4).variable = [ 8];
M_.block_structure.block(4).is_linear = true;
M_.block_structure.block(4).NNZDerivatives = 1;
M_.block_structure.block(4).bytecode_jacob_cols_to_sparse = [2 ];
M_.block_structure.block(5).Simulation_Type = 3;
M_.block_structure.block(5).endo_nbr = 1;
M_.block_structure.block(5).mfs = 1;
M_.block_structure.block(5).equation = [ 17];
M_.block_structure.block(5).variable = [ 9];
M_.block_structure.block(5).is_linear = true;
M_.block_structure.block(5).NNZDerivatives = 2;
M_.block_structure.block(5).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(6).Simulation_Type = 3;
M_.block_structure.block(6).endo_nbr = 1;
M_.block_structure.block(6).mfs = 1;
M_.block_structure.block(6).equation = [ 12];
M_.block_structure.block(6).variable = [ 18];
M_.block_structure.block(6).is_linear = true;
M_.block_structure.block(6).NNZDerivatives = 1;
M_.block_structure.block(6).bytecode_jacob_cols_to_sparse = [1 ];
M_.block_structure.block(7).Simulation_Type = 3;
M_.block_structure.block(7).endo_nbr = 1;
M_.block_structure.block(7).mfs = 1;
M_.block_structure.block(7).equation = [ 18];
M_.block_structure.block(7).variable = [ 10];
M_.block_structure.block(7).is_linear = true;
M_.block_structure.block(7).NNZDerivatives = 2;
M_.block_structure.block(7).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(8).Simulation_Type = 3;
M_.block_structure.block(8).endo_nbr = 1;
M_.block_structure.block(8).mfs = 1;
M_.block_structure.block(8).equation = [ 10];
M_.block_structure.block(8).variable = [ 14];
M_.block_structure.block(8).is_linear = true;
M_.block_structure.block(8).NNZDerivatives = 1;
M_.block_structure.block(8).bytecode_jacob_cols_to_sparse = [1 ];
M_.block_structure.block(9).Simulation_Type = 1;
M_.block_structure.block(9).endo_nbr = 2;
M_.block_structure.block(9).mfs = 2;
M_.block_structure.block(9).equation = [ 13 11];
M_.block_structure.block(9).variable = [ 16 15];
M_.block_structure.block(9).is_linear = true;
M_.block_structure.block(9).NNZDerivatives = 2;
M_.block_structure.block(9).bytecode_jacob_cols_to_sparse = [3 4 ];
M_.block_structure.block(10).Simulation_Type = 3;
M_.block_structure.block(10).endo_nbr = 1;
M_.block_structure.block(10).mfs = 1;
M_.block_structure.block(10).equation = [ 1];
M_.block_structure.block(10).variable = [ 6];
M_.block_structure.block(10).is_linear = true;
M_.block_structure.block(10).NNZDerivatives = 1;
M_.block_structure.block(10).bytecode_jacob_cols_to_sparse = [1 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([]);
M_.block_structure.block(1).g1_sparse_colval = int32([]);
M_.block_structure.block(1).g1_sparse_colptr = int32([]);
M_.block_structure.block(2).g1_sparse_rowval = int32([]);
M_.block_structure.block(2).g1_sparse_colval = int32([]);
M_.block_structure.block(2).g1_sparse_colptr = int32([]);
M_.block_structure.block(3).g1_sparse_rowval = int32([4 1 3 1 2 3 4 2 4 2 ]);
M_.block_structure.block(3).g1_sparse_colval = int32([3 5 5 6 6 7 7 8 8 12 ]);
M_.block_structure.block(3).g1_sparse_colptr = int32([1 1 1 2 2 4 6 8 10 10 10 10 11 ]);
M_.block_structure.block(4).g1_sparse_rowval = int32([]);
M_.block_structure.block(4).g1_sparse_colval = int32([]);
M_.block_structure.block(4).g1_sparse_colptr = int32([]);
M_.block_structure.block(5).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(5).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(5).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(6).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(6).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(6).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(7).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(7).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(7).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(8).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(8).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(8).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(9).g1_sparse_rowval = int32([]);
M_.block_structure.block(9).g1_sparse_colval = int32([]);
M_.block_structure.block(9).g1_sparse_colptr = int32([]);
M_.block_structure.block(10).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(10).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(10).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.variable_reordered = [ 13 17 12 11 19 5 4 3 2 7 1 8 9 18 10 14 16 15 6];
M_.block_structure.equation_reordered = [ 9 14 15 16 19 3 4 5 2 6 8 7 17 12 18 10 13 11 1];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 7 7;
 8 7;
 14 17;
 15 12;
 17 9;
 18 10;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 2;
 1 5;
 1 6;
 2 1;
 2 2;
 3 5;
 3 12;
 3 17;
 4 4;
 4 12;
 4 17;
 5 2;
 5 3;
 5 4;
 6 3;
 6 7;
 6 12;
 7 1;
 7 7;
 7 8;
 8 1;
 8 7;
 9 13;
 10 3;
 10 14;
 10 17;
 11 7;
 11 15;
 12 3;
 12 7;
 12 18;
 13 14;
 13 16;
 13 18;
 14 17;
 15 12;
 16 11;
 17 8;
 17 9;
 18 1;
 18 10;
 19 19;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 1 1;
 1 2;
 2 1;
 3 12;
];
M_.block_structure.dyn_tmp_nbr = 2;
M_.state_var = [17 12 7 9 10 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(19, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(11, 1);
M_.endo_trends = struct('deflator', cell(19, 1), 'log_deflator', cell(19, 1), 'growth_factor', cell(19, 1), 'log_growth_factor', cell(19, 1));
M_.NNZDerivatives = [54; 0; -1; ];
M_.dynamic_g1_sparse_rowval = int32([7 8 17 18 15 14 2 7 8 18 1 2 5 5 6 10 12 4 5 1 3 1 6 7 8 11 12 7 17 17 18 16 3 4 6 15 9 10 13 11 13 3 4 10 14 12 13 19 1 2 1 3 15 14 ]);
M_.dynamic_g1_sparse_colval = int32([7 7 9 10 12 17 20 20 20 20 21 21 21 22 22 22 22 23 23 24 24 25 26 26 26 26 26 27 27 28 29 30 31 31 31 31 32 33 33 34 35 36 36 36 36 37 37 38 39 39 40 50 58 59 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 1 1 1 1 1 3 3 4 5 5 6 6 6 6 6 7 7 7 11 14 18 20 22 23 28 30 31 32 33 37 38 40 41 42 46 48 49 51 52 52 52 52 52 52 52 52 52 52 53 53 53 53 53 53 53 53 54 55 ]);
M_.dynamic_g2_sparse_indices = int32([]);
M_.lhs = {
'x'; 
'pih'; 
'rnat'; 
'ynat'; 
'x'; 
'y'; 
'pi'; 
's'; 
'pistar'; 
'y'; 
'nx'; 
'y'; 
'real_wage'; 
'a'; 
'ystar'; 
'e'; 
'pi'; 
'pih'; 
'deprec_rate'; 
};
M_.static_tmp_nbr = [4; 0; 0; 0; ];
M_.static_g1_sparse_rowval = int32([1 2 7 8 18 2 5 5 6 10 12 4 5 1 3 1 6 11 12 7 17 16 4 6 15 9 10 13 11 13 3 4 10 14 12 13 19 ]);
M_.static_g1_sparse_colval = int32([1 1 1 1 1 2 2 3 3 3 3 4 4 5 5 6 7 7 7 8 8 11 12 12 12 13 14 14 15 16 17 17 17 17 18 18 19 ]);
M_.static_g1_sparse_colptr = int32([1 6 8 12 14 16 17 20 22 22 22 23 26 27 29 30 31 35 37 38 ]);
case_title='exchange rate peg (PEG)';
M_.params(1) = 1;
sigma = M_.params(1);
M_.params(2) = 1;
eta = M_.params(2);
M_.params(3) = 1;
gamma = M_.params(3);
M_.params(4) = 3;
phi = M_.params(4);
M_.params(5) = 6;
epsilon = M_.params(5);
M_.params(6) = 0.75;
theta = M_.params(6);
M_.params(7) = 0.99;
beta = M_.params(7);
M_.params(8) = 0.4;
alpha = M_.params(8);
M_.params(9) = 1.5;
phi_pi = M_.params(9);
M_.params(10) = 0.9;
rhoa = M_.params(10);
M_.params(11) = 0.86;
rhoy = M_.params(11);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(2, 2) = 1;
write_latex_parameter_table;
write_latex_definitions;
options_.TeX = true;
options_.impulse_responses.plot_threshold = 0;
options_.irf = 20;
options_.order = 1;
var_list_ = {'pih';'x';'pi';'s';'e';'r';'ph';'p';'a'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
collect_latex_files;
set_param_value('rhoa',0.66); 
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 6.083999999999999e-05;
M_.Sigma_e(2, 2) = 5.041000000000001e-05;
M_.Sigma_e(2, 1) = 1.6614e-05;
M_.Sigma_e(1, 2) = M_.Sigma_e(2, 1);
M_.sigma_e_is_diagonal = 0;
options_.irf = 0;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
var_string={'y','pih','pi','r','s','deprec_rate'};
fprintf('\nTABLE 1: Cyclical properties of alternative policy regimes\n')
fprintf('Case: %s\n', case_title)
for var_iter=1:length(var_string)
var_pos=strmatch(var_string{var_iter},M_.endo_names,'exact');
cyc_moments(var_iter,1)=sqrt(oo_.var(var_pos,var_pos))*100;
fprintf('%20s \t %3.2f \n',M_.endo_names_long{strmatch(var_string{var_iter},M_.endo_names,'exact'),:},cyc_moments(var_iter,1))
end
x_pos=strmatch('x',M_.endo_names,'exact');
pih_pos=strmatch('pih',M_.endo_names,'exact');
V_infl(1,1)=-(1-alpha)/2*(epsilon/((1-(beta*theta))*(1-theta)/theta)*oo_.var(pih_pos,pih_pos))*100;
V_output_gap(1,1)=-(1-alpha)/2*((1+phi)*oo_.var(x_pos,x_pos))*100;
V(1,1)=-(1-alpha)/2*(epsilon/((1-(beta*theta))*(1-theta)/theta)*oo_.var(pih_pos,pih_pos)+(1+phi)*oo_.var(x_pos,x_pos))*100;
fprintf('\nTABLE 2: Contribution to welfare losses\n')
fprintf('Case: %s\n', case_title)
fprintf('mu=%2.1f, phi=%2.1f\n',M_.params(strmatch('epsilon',M_.param_names,'exact'))/(M_.params(strmatch('epsilon',M_.param_names,'exact'))-1),M_.params(strmatch('phi',M_.param_names,'exact')))
fprintf('%-20s \t %5.4f \n','Var(Domestic infl.)',V_infl(1,1))
fprintf('%-20s \t %5.4f \n','Var(Output gap)',V_output_gap(1,1))
fprintf('%-20s \t %5.4f \n\n','Total',V(1,1))
mu=1.1;
set_param_value('epsilon',mu/(mu-1)); 
set_param_value('phi',3); 
options_.irf = 0;
options_.noprint = true;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
V_infl(1,2)=-(1-alpha)/2*(epsilon/((1-(beta*theta))*(1-theta)/theta)*oo_.var(pih_pos,pih_pos))*100;
V_output_gap(1,2)=-(1-alpha)/2*((1+phi)*oo_.var(x_pos,x_pos))*100;
V(1,2)=-(1-alpha)/2*(epsilon/((1-(beta*theta))*(1-theta)/theta)*oo_.var(pih_pos,pih_pos)+(1+phi)*oo_.var(x_pos,x_pos))*100;
fprintf('mu=%2.1f, phi=%2.1f\n',M_.params(strmatch('epsilon',M_.param_names,'exact'))/(M_.params(strmatch('epsilon',M_.param_names,'exact'))-1),M_.params(strmatch('phi',M_.param_names,'exact')))
fprintf('%-20s \t %5.4f \n','Var(Domestic infl.)',V_infl(1,2))
fprintf('%-20s \t %5.4f \n','Var(Output gap)',V_output_gap(1,2))
fprintf('%-20s \t %5.4f \n\n','Total',V(1,2))
mu=1.2;
set_param_value('epsilon',mu/(mu-1)); 
set_param_value('phi',10); 
options_.irf = 0;
options_.noprint = true;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
V_infl(1,3)=-(1-alpha)/2*(epsilon/((1-(beta*theta))*(1-theta)/theta)*oo_.var(pih_pos,pih_pos))*100;
V_output_gap(1,3)=-(1-alpha)/2*((1+phi)*oo_.var(x_pos,x_pos))*100;
V(1,3)=-(1-alpha)/2*(epsilon/((1-(beta*theta))*(1-theta)/theta)*oo_.var(pih_pos,pih_pos)+(1+phi)*oo_.var(x_pos,x_pos))*100;
fprintf('mu=%2.1f, phi=%2.1f\n',M_.params(strmatch('epsilon',M_.param_names,'exact'))/(M_.params(strmatch('epsilon',M_.param_names,'exact'))-1),M_.params(strmatch('phi',M_.param_names,'exact')))
fprintf('%-20s \t %5.4f \n','Var(Domestic infl.)',V_infl(1,3))
fprintf('%-20s \t %5.4f \n','Var(Output gap)',V_output_gap(1,3))
fprintf('%-20s \t %5.4f \n\n','Total',V(1,3))
mu=1.1;
set_param_value('epsilon',mu/(mu-1)); 
set_param_value('phi',10); 
options_.irf = 0;
options_.noprint = true;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
V_infl(1,4)=-(1-alpha)/2*(epsilon/((1-(beta*theta))*(1-theta)/theta)*oo_.var(pih_pos,pih_pos))*100;
V_output_gap(1,4)=-(1-alpha)/2*((1+phi)*oo_.var(x_pos,x_pos))*100;
V(1,4)=-(1-alpha)/2*(epsilon/((1-(beta*theta))*(1-theta)/theta)*oo_.var(pih_pos,pih_pos)+(1+phi)*oo_.var(x_pos,x_pos))*100;
fprintf('mu=%2.1f, phi=%2.1f\n',M_.params(strmatch('epsilon',M_.param_names,'exact'))/(M_.params(strmatch('epsilon',M_.param_names,'exact'))-1),M_.params(strmatch('phi',M_.param_names,'exact')))
fprintf('%-20s \t %5.4f \n','Var(Domestic infl.)',V_infl(1,4))
fprintf('%-20s \t %5.4f \n','Var(Output gap)',V_output_gap(1,4))
fprintf('%-20s \t %5.4f \n\n','Total',V(1,4))
save('Gali_Monacelli_2005_PEG','V_infl','V_output_gap','V','cyc_moments','M_','oo_','options_','case_title');
if exist('Gali_Monacelli_2005_DITR.mat') && exist('Gali_Monacelli_2005_CITR.mat') && exist('Gali_Monacelli_2005_PEG.mat') && exist('Gali_Monacelli_2005_OPTIMAL.mat')
DITR=load('Gali_Monacelli_2005_DITR.mat');
CITR=load('Gali_Monacelli_2005_CITR.mat');
PEG=load('Gali_Monacelli_2005_PEG.mat');
OPTIMAL=load('Gali_Monacelli_2005_OPTIMAL.mat');
var_string={'pih','x','pi','s','e','r','ph','p'};
figure
for fig_iter=1:length(var_string)
subplot(4,2,fig_iter)
plot(1:20,OPTIMAL.oo_.irfs.([var_string{fig_iter},'_eps_a']),'b-',1:20,DITR.oo_.irfs.([var_string{fig_iter},'_eps_a']),'g--',1:20,CITR.oo_.irfs.([var_string{fig_iter},'_eps_a']),'r-x',1:20,PEG.oo_.irfs.([var_string{fig_iter},'_eps_a']),'c-s')
grid on
title(OPTIMAL.M_.endo_names_long(strmatch(var_string{fig_iter},OPTIMAL.M_.endo_names,'exact'),:))
end
var_string={'y','pih','pi','r','s','deprec_rate'};
fprintf('\nTABLE 1: Cyclical properties of alternative policy regimes\n')
fprintf('%20s \t %3s \t %3s \t %3s \t %3s \n','','Opt','DIT','CIT','PEG')
fprintf('%20s \t %3s \t %3s \t %3s \t %3s \n','','sd%','sd%','sd%','sd%')
for var_iter=1:length(var_string)
fprintf('%20s \t %3.2f \t %3.2f \t %3.2f \t %3.2f \n',M_.endo_names_long(strmatch(var_string{var_iter},M_.endo_names,'exact'),:),OPTIMAL.cyc_moments(var_iter),DITR.cyc_moments(var_iter),CITR.cyc_moments(var_iter),PEG.cyc_moments(var_iter))
end
case_string={'Benchmark mu = 1.2, phi = 3', 'Low steady state mark-up mu = 1.1, phi = 3','Low elasticity of labour supply mu = 1.2, phi = 10','Low mark-up and elasticity of labour supply mu = 1.1, phi= 10'};
fprintf('\nTABLE 2: Contribution to welfare losses\n')
fprintf('%20s \t %6s \t %6s \t %6s \n','','DIT','CIT','PEG')
for case_iter=1:4
fprintf('%-s \n',case_string{case_iter});
fprintf('%-20s \t %5.4f \t %5.4f \t %5.4f \n','Var(Domestic infl.)',DITR.V_infl(1,case_iter),CITR.V_infl(1,case_iter),PEG.V_infl(1,case_iter))
fprintf('%-20s \t %5.4f \t %5.4f \t %5.4f \n','Var(Output gap)',DITR.V_output_gap(1,case_iter),CITR.V_output_gap(1,case_iter),PEG.V_output_gap(1,case_iter))
fprintf('%-20s \t %5.4f \t %5.4f \t %5.4f \n\n','Total',DITR.V(1,case_iter),CITR.V(1,case_iter),PEG.V(1,case_iter))
end   
end


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Gali_Monacelli_2005_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_Monacelli_2005_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_Monacelli_2005_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_Monacelli_2005_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_Monacelli_2005_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_Monacelli_2005_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_Monacelli_2005_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_Monacelli_2005_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
