import Text.Printf

--comment

string :: (Integral a) => a -> String
string 1 = "import Text.Printf\n\n--comment\n\nstring :: (Integral a) => a -> String\nstring 1 = %s\n\nmain = do\n    --comment\n    printf (string 1) (show (string 1))\n"

main = do
    --comment
    printf (string 1) (show (string 1))
