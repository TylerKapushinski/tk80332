# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
echo "Loading frmat"
frmat(){

  P1=$1
  P2=$2

  lineLen=80
  totLen=$(echo $P1$P2 | wc -m)
  newLine=$P1
  while [[ $totLen -lt $lineLen ]]; do
    newLine="$newLine."
    totLen=$(echo $newLine$P2 | wc -m)
  done
strLine=$newLine$P2

}

echo "frmat loaded.  Loading functions."
# Load functions

for f in /home/ec2-user/tk80332/functions/*.sh; do
    echo $f
    filef=${f%.sh}
    filef=${filef##*/}
    echo $filef
    #. $f
    frmat "Loading" $filef
    echo $strLine
done

echo "functions loaded."


alias  l="ls -la"
