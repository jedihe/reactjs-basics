# Ensure .npm/ is owned by acting user before mounting it into the container
mkdir -p $(pwd)/.npm

# Define basic alias, with support for:
# - Mounting cur-dir as /cur-dir, set it as workdir.
# - Mount ./.npm so that it'll be used by npm (inside the container).
# - Run command with same uid/gid as acting user (host).
# - Expose port 8080
alias _dnoderun='docker run -it \
  --workdir="/$(basename $(pwd))" \
  --volume="$(pwd):/$(basename $(pwd))" \
  --volume="$(pwd)/.npm:/home/$USER/.npm" \
  --user $(id -u):$(id -g) \
  --volume="/etc/group:/etc/group:ro" \
  --volume="/etc/passwd:/etc/passwd:ro" \
  --volume="/etc/shadow:/etc/shadow:ro" \
  -p 8080:8080 \
  node:12-alpine'
alias dnode='_dnoderun node'
alias dnpm='_dnoderun npm'
alias dnpx='_dnoderun npx'
