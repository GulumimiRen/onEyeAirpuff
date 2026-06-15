make_p_oneye_lookup <- function(dig_smooth, t_min = 5, t_max = 26,
                                method = c("monoH.FC", "linear")) {
  method <- match.arg(method)
  ord <- order(dig_smooth$t_ms)
  t_all <- dig_smooth$t_ms[ord]
  P_all <- pmax(dig_smooth$P_mmHg[ord], 0)
  i_peak <- which.max(P_all)
  t_peak <- t_all[i_peak]

  fn_rise <- if (method == "monoH.FC") {
    stats::splinefun(t_all[1:i_peak], P_all[1:i_peak], method = "monoH.FC")
  } else {
    stats::approxfun(t_all[1:i_peak], P_all[1:i_peak], method = method, rule = 2)
  }
  fn_fall <- if (method == "monoH.FC") {
    stats::splinefun(t_all[i_peak:length(t_all)], P_all[i_peak:length(t_all)],
                     method = "monoH.FC")
  } else {
    stats::approxfun(t_all[i_peak:length(t_all)], P_all[i_peak:length(t_all)],
                     method = method, rule = 2)
  }

  function(t_query) {
    if (length(t_query) == 0L) return(numeric(0))
    tq <- as.numeric(t_query)
    out <- numeric(length(tq))
    bad <- !is.finite(tq) | tq < t_min | tq > t_max
    out[bad] <- 0
    ok <- !bad
    if (!any(ok)) return(out)
    ti <- tq[ok]
    pi <- ifelse(ti <= t_peak, fn_rise(ti), fn_fall(ti))
    out[ok] <- pmax(pi, 0)
    out
  }
}
