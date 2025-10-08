deploy to unikraft:

curl -sSfL https://get.kraftkit.sh | sh

Set Unikraft Cloud access token:
export UKC_TOKEN=token

Set metro to Frankfurt, DE:
export UKC_METRO=fra

kraft cloud deploy -p 443:8080 .


