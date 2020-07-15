test=$(kubectl get pod busybox)
if $test == ""
	exit 1
fi
exit 0
