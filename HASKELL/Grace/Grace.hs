import System.IO
import Data.Char
import Text.Printf

main = do
--comment
    let str = "import System.IO\nimport Data.Char\nimport Text.Printf\n\nmain = do\n--comment\n    let str = %s\n    let file = %s\n    writeFile file (printf str (show str) (show file))\n"
    let file = "Grace_kid.hs"
    writeFile file (printf str (show str) (show file))
