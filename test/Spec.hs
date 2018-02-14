import Test.Hspec
import Lib

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "add" $ do
    it "adds 2 and 2" $ do
      add 2 2 `shouldBe` 4
    it "adds -2 and 2" $ do
      add (-2) 2 `shouldBe` 0

  describe "answer" $ do
    it "states that the answer to life, the universe and everything is 42" $ do
      answer `shouldBe` 42

  describe "quadratic" $ do
    it "works with 2x^2 + 5x + 7 as it should" $ do
      let equation = quadratic 2 5 7
      equation 5 `shouldBe` 82
      equation (-5) `shouldBe` 32
      equation 0 `shouldBe` 7
    it "works with -(x^2) + 2x - 10.5 as it should" $ do
      let equation = quadratic (-1) 2 (-10.5)
      equation 5 `shouldBe` (-25.5)
      equation (-5) `shouldBe` (-45.5)
      equation 0 `shouldBe` (-10.5)

  describe "linear" $ do
    it "works with -2x + 6 as it should" $ do
      let equation = linear (-2) 6
      equation 5 `shouldBe` (-4)
      equation (-5) `shouldBe` 16
    it "works with 0.5x - 2.75 as it should" $ do
      let equation = linear 0.5 (-2.75)
      equation 5 `shouldBe` (-0.25)
      equation (-5) `shouldBe` (-5.25)

  describe "factorial" $ do
    it "works with small results" $ do
      factorial 0 `shouldBe` 1
      factorial 5 `shouldBe` 120
      factorial 10 `shouldBe` 3628800
    it "works with big results" $ do
      factorial 17 `shouldBe` 355687428096000
      factorial 20 `shouldBe` 2432902008176640000
    it "works with huge results" $ do
      factorial 50 `shouldBe` 30414093201713378043612608166064768844377641568960512000000000000
