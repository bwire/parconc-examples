-- <<all
import Sudoku
import Control.Exception
import System.Environment
import Data.Maybe

main :: IO ()
main = do
  [fn] <- getArgs
  fileData <- readFile fn
  print 
    $ length 
    $ filter isJust 
    $ map solve 
    $ lines fileData
 