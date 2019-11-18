# aliases
alias dsh=/Users/lee/git/sumologic/ops/bin/dsh.sh
alias props=/Users/lee/git/sumologic/system/bin/local-props-updater.py

alias box='ssh -A box-lee_box -o StrictHostKeyChecking=no -t "tmux new -A -s lee_session"'

# variables
set -x SUMO_HOME /Users/lee/git/sumologic
set -x _JAVA_OPTIONS "-Djava.awt.headless=true"
set -x ONE_PASSWORD_HACKY_INTEGRATION OFF
# ulimit -n 65536
set -x MVN_HOME /usr/local/Cellar/maven/3.5.3
set -x MAVEN_OPTS "-Xmx1024m -Djava.awt.headless=true"

# fix prettier semicolons
function pfs # prettier fix semicolons
  grep 'Unnecessary semicolon' ~/lintstuff | sed -En 's/ERROR: ([^\[]+)\[([0-9]+), ([0-9]+)]: Unnecessary semicolon/\1 \2/p' > ~/lintproblems
  for semicolon in (cat ~/lintproblems)
    set file (string split " " $semicolon)[1]
    set line (string split " " $semicolon)[2]
    sed -i '' -e "$line[1]s/;\$//" $file
  end
end
