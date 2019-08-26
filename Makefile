doc:
	PYTHONPATH=`pwd` pydoc2 dictclient > dictclient.txt
	PYTHONPATH=`pwd` pydoc2 -w dictclient

clean:
	-rm -f `find . -name "*~"`
	-rm -f `find . -name "*.pyc"`

changelog:
	cvs2cl
	cvs commit ChangeLog
	rm ChangeLog.bak
