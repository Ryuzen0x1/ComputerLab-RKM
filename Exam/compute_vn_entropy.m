% Function to compute entropy from state vector
function S = compute_vn_entropy(state)
  dmatrix = state * state';
  reduced_dmatrix = [trace(dmatrix(1:2, 1:2)), trace(dmatrix(1:2,3:4)); ...
                     trace(dmatrix(3:4, 1:2)), trace(dmatrix(3:4,3:4))];

  evals = eig(reduced_dmatrix);
  positive_evals = evals(evals > 1e-5);
  S = -sum(positive_evals .* log2(positive_evals));
end
