FROM runatlantis/atlantis:latest

RUN curl -s https://api.github.com/repos/gruntwork-io/terragrunt/releases/latest \
| grep "terragrunt_linux_amd64" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi - \
 && chmod +x terragrunt_linux_amd64
COPY terragrunt_linux_amd64 /usr/local/bin/terragrunt
