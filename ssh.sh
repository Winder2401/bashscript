##ssh domain change
curl https://get.acme.sh | sh
~/.acme.sh/acme.sh --set-default-ca --server letsencrypt
~/.acme.sh/acme.sh --register-account -m xxxx@xxxx.com
~/.acme.sh/acme.sh --issue -d ad.winder.store --standalone
~/.acme.sh/acme.sh --installcert -d ad.winder.store --key-file /root/private.key --fullchain-file /root/cert.crt
