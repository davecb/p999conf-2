copy:
	-rclone ${OPTS} copy Resources GoogleDrive:p99conf25/Resources
	for i in *.odt *.odp; do \
		echo "$$i"; \
		rclone copyto ${OPTS} -L `pwd`/$$i GoogleDrive:p99conf25/$$i; \
	done

