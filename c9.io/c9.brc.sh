# see http://stackoverflow.com/questions/32794452/cloud-9-sdk-c9-
# editor-doesnt-open-from-terminal-as-default-editor/32796457#32796457

echo "  making c9 the default editor"

export EDITOR='fn() { 
    cat $1 > ~/.c9-edit; 
    c9 open --wait ~/.c9-edit;
    cat ~/.c9-edit > $1;
} ;fn'