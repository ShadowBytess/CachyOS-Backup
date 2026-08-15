function reboot --wraps=sudo reboot --description'alias reboot=sudo reboot'
    sudo reboot $argv
end
