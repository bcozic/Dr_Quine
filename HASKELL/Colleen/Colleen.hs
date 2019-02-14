import Text.Printf

--comment

get_string :: (Integral a) => a -> String
get_string 1 = "import Text.Printf\n\n--comment\n\nget_string :: (Integral a) => a -> String\nget_string 1 = %s\n\nmain = do\n    --comment\n    printf (get_string 1) (show (get_string 1))\n"

main = do
    --comment
    printf (get_string 1) (show (get_string 1))
