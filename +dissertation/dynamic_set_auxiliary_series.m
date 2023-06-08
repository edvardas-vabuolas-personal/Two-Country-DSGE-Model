function ds = dynamic_set_auxiliary_series(ds, params)
%
% Status : Computes Auxiliary variables of the dynamic model and returns a dseries
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

ds.AUX_ENDO_LAG_1_1=ds.pi_h(-1);
ds.AUX_ENDO_LAG_30_1=ds.pi_h_f(-1);
ds.AUX_ENDO_LAG_15_1=ds.yhat(-1);
ds.AUX_ENDO_LAG_43_1=ds.yhat_f(-1);
end
