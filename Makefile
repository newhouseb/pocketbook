all:
	aws s3 cp --acl public-read index.html s3://pocketbook.software/index.html
	aws cloudfront create-invalidation --distribution-id E3ESXM568FKRD4 --paths / /index.html
