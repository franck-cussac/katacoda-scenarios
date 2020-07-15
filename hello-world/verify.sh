test=$(kubectl get pod busybox)
if $test == ""
	exit 0
fi
exit 1
