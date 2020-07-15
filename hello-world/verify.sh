test=$(kubectl get pod busybox)
if $test == ""
	echo done
fi
echo fail
