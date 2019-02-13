import System.IO
import Data.Char
import Text.Printf
import System.Process
import System.Exit

main = do
    let nb = 5
    let pars_file = "Sully_%s.hs"
    let file = printf pars_file (show (nb - 1))
    let str = "import System.IO\nimport Data.Char\nimport Text.Printf\nimport System.Process\nimport System.Exit\n\nmain = do\n    let nb = %s\n    let pars_file = %s\n    let file = printf pars_file (show (nb - 1))\n    let str = %s\n    let pars_compile = %s\n    let compile = printf pars_compile file\n    let pars_run = %s\n    let run = printf pars_run (show (nb -1))\n    if nb <= 0\n        then exitWith ExitSuccess\n    else writeFile file (printf str (show (nb - 1)) (show pars_file) (show str) (show pars_compile) (show pars_run))\n    system compile\n    system run\n"
    let pars_compile = "ghc --make %s"
    let compile = printf pars_compile file
    let pars_run = "./Sully_%s"
    let run = printf pars_run (show (nb -1))
    if nb <= 0
        then exitWith ExitSuccess
    else writeFile file (printf str (show (nb - 1)) (show pars_file) (show str) (show pars_compile) (show pars_run))
    system compile
    system run
