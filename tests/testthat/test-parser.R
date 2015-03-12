
test_that("We can parse the Kaggle sample bracket", {
  f <- system.file('kaggle_data/sample_submission.csv', package = "kaggleNCAA", mustWork=TRUE)
  dat <- parseBracket(f)
  expect_is(dat, "data.table")
  expect_equal(nrow(dat), 9112)
  expect_true(dat[,all(team_1 < team_2)])
})