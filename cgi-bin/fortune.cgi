#!/bin/sh

echo "Content-type: text/html"
echo
echo "<html> <head> <title>Fortune Cookie</title>"
echo "<style> body { font-family: Verdana, sans-serif; color: antiquewhite; }</style>"
echo "</head>"
echo "<body><p>"
/usr/games/fortune -sa | sed -e 's/$/<br>/' -e 's@\(.*--.*$\)@<b>\1</b>@'
echo "</p></body></html>"
