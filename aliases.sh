alias dnpm='docker run -it -w /$(basename $(pwd)) -v $(pwd):/$(basename $(pwd)) -v $(pwd)/.npm:/root/.npm -p 8080:8080 node:12-alpine npm'
alias dnpx='docker run -it -w /$(basename $(pwd)) -v $(pwd):/$(basename $(pwd)) -v $(pwd)/.npm:/root/.npm -p 8080:8080 node:12-alpine npx'
