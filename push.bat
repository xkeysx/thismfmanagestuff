if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "BO darbi" /min "%~f0" %* && exit
git add --all
git commit -m "%time%, %date%"
git push -u origin main
exit