FROM microsoft/nanoserver

COPY test.txt C:
	
CMD ["cmd", "/C", "type C:\\test.txt"]