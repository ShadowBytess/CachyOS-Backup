function cget --description 'alias cget=curl -OL#J'
    curl -O -L '-#' -J $argv
end
