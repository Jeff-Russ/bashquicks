#####  bash_aliases for Amazon S3  ----  part of bashquicks

######--------------------------------------------######
######  By Jeff Russ https://github.com/Jeff-Russ ######
######--------------------------------------------######

alias s3b="aws s3api list-buckets --query 'Buckets[].Name'"
alias s3='aws s3';

echo "  Added amazon s3 aliases" >> $BQ_LOG