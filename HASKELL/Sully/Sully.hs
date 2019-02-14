import System.IO
import Data.Char
import Text.Printf
import System.Process
import System.Exit

main = do
    let nb = 5
    let parse_file = "Sully_%s.hs"
    let file = printf parse_file (show (nb - 1))
    let str = "import System.IO\nimport Data.Char\nimport Text.Printf\nimport System.Process\nimport System.Exit\n\nmain = do\n    let nb = %s\n    let parse_file = %s\n    let file = printf parse_file (show (nb - 1))\n    let str = %s\n    let parse_compile = %s\n    let compile = printf parse_compile file\n    let parse_run = %s\n    let run = printf parse_run (show (nb -1))\n    if nb <= 0\n        then exitWith ExitSuccess\n    else writeFile file (printf str (show (nb - 1)) (show parse_file) (show str) (show parse_compile) (show parse_run))\n    system compile\n    system run\n"
    let parse_compile = "ghc --make %s"
    let compile = printf parse_compile file
    let parse_run = "./Sully_%s"
    let run = printf parse_run (show (nb -1))
    if nb <= 0
        then exitWith ExitSuccess
    else writeFile file (printf str (show (nb - 1)) (show parse_file) (show str) (show parse_compile) (show parse_run))
    system compile
    system run
