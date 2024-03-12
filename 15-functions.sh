# to modularize our code and know exactly where error took place, we use functions

# installation script
echo "install step1"
echo "install step2"
echo "install step3"
echo "install step4"
# configuration script
echo "config step1"
echo "config step2"
echo "config step3"
# deployment script
echo "deploy step1"
echo "deploy step2"
echo "deploy step3"

echo
echo
# THREE ways to use function block

function install(){
    # installation script
    echo "install step1"
    echo "install step2"
    echo "install step3"
    echo "install step4"
}
function config {
    # configuration script
    echo "config step1"
    echo "config step2"
    echo "config step3"
}
deploy(){
    # deployment script
    echo "deploy step1"
    echo "deploy step2"
    echo "deploy step3"
}

# BUT YOU NEED TO CALL THE FUNCTIONS AS WELL
install
config
deploy



