# Define basic alias, with support for:
# - Ensure .dmounts subdir to mount as /home/$USER is owned by the acting user.
# - Mounting cur-dir as /cur-dir, set it as workdir.
# - Mount ./.dmounts/home/$USER so that it'll be used by the containerized npm.
# - Run command with same uid/gid as acting user (host).
# - Expose port 8080
#
# Technique found at https://medium.com/faun/set-current-host-user-for-docker-container-4e521cef9ffc
alias _dnoderun='mkdir -p $(pwd)/.dmounts/home/$USER && \
  docker run -it --rm \
  --workdir="/$(basename $(pwd))" \
  --volume="$(pwd):/$(basename $(pwd))" \
  --volume="$(pwd)/.dmounts/home/$USER:/home/$USER" \
  --user $(id -u):$(id -g) \
  --volume="/etc/group:/etc/group:ro" \
  --volume="/etc/passwd:/etc/passwd:ro" \
  --volume="/etc/shadow:/etc/shadow:ro" \
  -p 8080:8080 \
  node:12-alpine'
alias dnode='_dnoderun node'
alias dnpm='_dnoderun npm'
alias dnpx='_dnoderun npx'
