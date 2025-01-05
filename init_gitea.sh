#!/usr/bin/env bash

get_git_CA() {
    openssl s_client -connect $1:443 -showcerts </dev/null 2>/dev/null | openssl x509 -outform PEM > /etc/ssl/certs/gitea.pem
}

add_gitea_CA_to_git() {
    git config --global http."https://$1/".sslCAInfo /etc/ssl/certs/gitea.pem
}

main() {
    sudo bash -c "$(declare -f get_git_CA); get_git_CA $1"
    add_gitea_CA_to_git $1
}

main "$@"
