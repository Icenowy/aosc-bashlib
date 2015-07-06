if [ "$(basename $PWD)" = "test" ]
then
	cd $1
else
	cd test/$1
fi
sh main.sh > result.txt || exit 1
diff result.txt expected_result.txt
