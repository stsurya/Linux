# CURL Command

- `curl` is command line tool for transfering data with URL's.<br>
- `curl` is designed to transfer data using various protocols such as HTTP, HTTPS, FTP, SCP, SFTP, and more.
  `curl [options] [URL]`

## fetching data using curl command

`curl https://example.com`<br>
. The URL syntax is protocol dependent and multiple URLs can be written as sets like: <br>
`curl http://site.{one, two, three}.com`<br>

## Handling http request

Curl allows you to send custom HTTPS requests with methods like GET, POST, PUT, DELETE e.t.c<br>
`curl -X GET https://api.example.com/resource`<br>
`curl -X POST -d "key1=value1&key2=value2" https://api.example.com/resource`<br>

## Downloading Files

curl is also widely used for downloading files from the internet. To download a file, you simply provide the URL of the file as an argument:<br>
`curl -o [File Name] [URL]`<br>
-O: This option downloads the file and saves it with the same name as in the URL. <br>

## Uploading Files

In addition to downloading, `curl` can also upload files to a server using various protocols. For example, to upload a file via FTP:<br>
`curl -T [File Name] [URL]`<br>
`curl -T uploadfile.txt ftp://example.com/upload/`<br>
In this example, `-T uploadfile.txt` specifies the file to be uploaded (`uploadfile.txt`). The `-T` flag is used to upload a file with FTP. `curl` then sends the specified file to the FTP server located at `ftp://example.com/upload/`. This is useful for automating file uploads or transferring files via FTP from the command line.<br>
