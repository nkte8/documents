if [[ ! -e ~/.ssh/config ]];then
set -x
    mkdir ~/.ssh
    cat << EOF > ~/.ssh/config
Host *
 StrictHostKeyChecking no
 UserKnownHostsFile=/dev/null
 User ubuntu
EOF
set +x
fi

if [[ ! -e ./roles/kubernetes/build/files/pki/ca.crt ]];then
    chmod +x ${PWD}/init/*.sh
    echo "kubeadm pki seems not found. create certs or continue to auto run by this command."
    echo " cd ${PWD}/init/;./make-cacert.sh;./make-apiserver-cert.sh;./mv-certs.sh"
    echo -n "(press enter to continue): " && read
    here=${PWD}
    cd ${PWD}/init/;./make-cacert.sh;./make-apiserver-cert.sh;./mv-certs.sh
    cd ${here}
fi

ansible --version
ansible-playbook site.yaml -i hosts.yaml