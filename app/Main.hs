module Main where

main :: IO ()
main = putStrLn myhtml
  where
    myhtml = makeHtml "Hello title" "Hello, world!"
    makeHtml title content =
      html_
        ( head_
            ( title_
                title
            )
            <> body_
              content
        )
    html_ content =
      "<html>" <> content <> "</html>"
    head_ content =
      "<head>" <> content <> "</head>"
    body_ content =
      "<body>" <> content <> "</body>"
    title_ content =
      "<title>" <> content <> "</title>"
