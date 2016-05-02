# Setting PATH for Python 3.4
# The orginal version is saved in .zprofile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
#export PATH

###### GIT ######
gs() { git status }
gc() { git commit -m }
gb() { git branch }
gbd() { git branch -d }
gm() { git merge }
grev() { git reset --hard }
gpush() { git push }
gf() { git fetch }
ga() { git add }
gau() { git add -u }
gpull() { git pull }

###### RECURSE CENTER ######
torr() { cd ~/Development/torrent }

bprc() { cd ~/Development/bpython }
activatebp() { bprc; source venv/bin/activate }

###### DWELLER ######

dweller() { cd /Users/wevial/Development/nycdweller }
dwenv() { dweller; source nycdenv/bin/activate }

###### BU/NUS RELATED ######
# FALL 2014
cs4212() { cd /Users/wevial/Documents/BU/CS4212 }
cs4236() { cd /Users/wevial/Documents/BU/CS4236 }
gek1007() { cd /Users/wevial/Documents/BU/GEK1007 }

# SPRING 2014
cs330() { cd /Users/wevial/Documents/BU/CS330 }
cs350() { cd /Users/wevial/Documents/BU/CS350 }
cs492() { cd /Users/wevial/Documents/BU/CS492 }
## Imparse specific
dirst() { cd /Users/wevial/Documents/BU/CS492 }
dimpy() { dirst; cd imparse/Python }
dimphp() { dirst; cd imparse/PHP }
dimj() { dirst; cd imparse/JavaScript }

# FALL 2013
cs210() { cd /Users/wevial/Documents/BU/CS210 }
cs237() { cd /Users/wevial/Documents/BU/CS237 }
cs320() { cd /Users/wevial/Documents/BU/CS320 }

TERM=xterm-256color
