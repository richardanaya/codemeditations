serve:
	http-server -p 8080
deploy:
	aws s3 sync . s3://codemeditations.com
	aws cloudfront create-invalidation --distribution E3GDRO9IVGZWNG --paths "/*"
