kubectl delete ns userns-1 userns-2 2>/dev/null
/root/namespace-create.sh 2
[[ $(kubectl get ns | grep -E '\<userns-(1|2)\>'|wc -l) -eq 2 ]] && exit 0 || exit 1