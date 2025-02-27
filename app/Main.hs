module Main where

main :: IO ()
main = putStrLn myhtml
  where
    myhtml = makeHtml "Hello title" "Hello, world!"
    makeHtml :: String -> (String -> String)
    el :: String -> (String -> String)
    el = \tag -> \content ->
      "<" <> tag <> ">" <> content <> "</" <> tag <> ">"
    makeHtml title content =
      html_
        ( head_
            ( title_
                title
            )
            <> body_
              content
        )
    html_ :: String -> String
    {-
        html_ content =
          "<html>" <> content <> "</html>"
    -}
    html_ = el "html"

    head_ :: String -> String
    head_ content =
      "<head>" <> content <> "</head>"

    body_ :: String -> String
    {-
    body_ content =
      "<body>" <> content <> "</body>"
    -}
    body_ = el "body"

    title_ :: String -> String
    title_ content =
      "<title>" <> content <> "</title>"
