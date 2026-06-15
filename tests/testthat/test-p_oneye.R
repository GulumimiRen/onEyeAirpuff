test_that("out-of-support times return 0", {
  expect_equal(p_oneye(c(0, 4.9, 26.1, 30)), rep(0, 4))
  expect_equal(p_oneye(c(NA, Inf, -Inf)), rep(0, 3))
})

test_that("output length matches input length", {
  t <- c(7.5, 15, 17.5, 22)
  expect_length(p_oneye(t), length(t))
  expect_length(p_oneye(numeric(0)), 0)
})

test_that("pressures are finite and non-negative in support", {
  t <- seq(5, 26, by = 0.37)
  p <- p_oneye(t)
  expect_true(all(is.finite(p)))
  expect_true(all(p >= 0))
})

test_that("matches bundled digitized curve at tabulated times", {
  dig <- onEyeAirpuff::on_eye_digitized_smooth
  t_ref <- c(7.5, 8.0, 8.5, 15, 17.5, 20, 22, 5, 26)
  i <- match(t_ref, dig$t_ms)
  expect_false(any(is.na(i)))
  expect_equal(p_oneye(t_ref), dig$P_mmHg[i], tolerance = 1e-10)
})
