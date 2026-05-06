import PortfolioCore
import DomainReview

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 62 78 14 13 11
  expect (score signalcase_1 == 116)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 76 104 27 7 12
  expect (score signalcase_2 == 144)
  expect (classify signalcase_2 == "review")
  let signalcase_3 = Signal 75 82 8 17 7
  expect (score signalcase_3 == 146)
  expect (classify signalcase_3 == "review")
  let domainReview = ReviewItem 69 50 10 82
  expect (reviewScore domainReview == 240)
  expect (reviewLane domainReview == "ship")
