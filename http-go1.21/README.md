deploy to unikraft:

curl -sSfL https://get.kraftkit.sh | sh

# Set Unikraft Cloud access token
export UKC_TOKEN=token
# Set metro to Frankfurt, DE
export UKC_METRO=fra

kraft cloud deploy -p 443:8080 .


custom domain:
For a subdomain you own such as docs.mydomain.com, a CNAME is enough. In this case, you can just add a CNAME record with your sub-domain (docs) as the host and point the record to Unikraft Cloud's metro (for example, fra0.kraft.host).

kraft cloud deploy -p 443:8080 -d your_domain .
