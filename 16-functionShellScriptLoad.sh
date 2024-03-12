# YOU CANNOT CALL A FUNCTION BEFORE DEPLOYING IT
# BEST PRACTICE - DEFINE FUNCTIONS AFTER VARIABLES AT THE START OF THE SCRIPT
# WE CAN ALSO CALL OTHER FUNCTIONS WITHIN A FUNCTION
# THREE ways to use function block

function install(){
    # installation script
    echo "install step1"
    echo "install step2"
    echo "install step3"
    echo "install step4"
}
install
config
function config {
    # configuration script
    echo "config step1"
    echo "config step2"
    echo "config step3"
}
deploy(){
    # deployment script
    config
    echo "deploy step1"
    echo "deploy step2"
    echo "deploy step3"
}

# BUT YOU NEED TO CALL THE FUNCTIONS AS WELL

deploy