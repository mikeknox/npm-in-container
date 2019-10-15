_NODE_VER="${NODE_VER:-latest}"

if [[ "${_NODE_VER:-}" == "latest" ]] ; then
    name="npm"
else
    name="npm${_NODE_VER}"
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

alias "build-${name}"="NODE_VER=${_NODE_VER} docker-compose -f ${DIR}/docker-compose.yaml build"
alias "${name}"="NODE_VER=${_NODE_VER} docker-compose -f ${DIR}/docker-compose.yaml run npm"

unset _NODE_VER