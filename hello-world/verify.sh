test=$(kubectl get pod busybox)
if $test -eq ""
	echo done
fi
echo fail
