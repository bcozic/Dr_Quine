import System.IO
import System.Directory
import Data.Char
import Text.Printf
import System.Process
import System.Exit

get_next_nb :: Bool -> Int
get_next_nb x =
    if (x)
        then 1
    else 0

main = do
    let nb = 5
    let parse_file = "Sully_%s.hs"
    fileExists <- doesFileExist (printf parse_file (show nb))
    let new_nb = nb - (get_next_nb fileExists)
    let file = printf parse_file (show (new_nb))
    let str = "import System.IO\nimport System.Directory\nimport Data.Char\nimport Text.Printf\nimport System.Process\nimport System.Exit\n\nget_next_nb :: Bool -> Int\nget_next_nb x =\n    if (x)\n        then 1\n    else 0\n\nmain = do\n    let nb = %s\n    let parse_file = %s\n    fileExists <- doesFileExist (printf parse_file (show nb))\n    let new_nb = nb - (get_next_nb fileExists)\n    let file = printf parse_file (show (new_nb))\n    let str = %s\n    let parse_compile = %s\n    let compile = printf parse_compile file\n    let parse_run = %s\n    let run = printf parse_run (show (new_nb))\n    if nb <= 0\n        then exitWith ExitSuccess\n    else writeFile file (printf str (show (new_nb)) (show parse_file) (show str) (show parse_compile) (show parse_run))\n    system compile\n    system run\n"
    let parse_compile = "ghc --make %s"
    let compile = printf parse_compile file
    let parse_run = "./Sully_%s"
    let run = printf parse_run (show (new_nb))
    if nb <= 0
        then exitWith ExitSuccess
    else writeFile file (printf str (show (new_nb)) (show parse_file) (show str) (show parse_compile) (show parse_run))
    system compile
    system run
