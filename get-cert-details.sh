URL=<your URL>
echo | openssl s_client -showcerts -servername $URL -connect $URL:443 2>/dev/null | openssl x509 -inform pem -noout -text
