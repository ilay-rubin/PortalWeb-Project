if [ "$1" =  "6" ]; then 
  sed -i 's|es5|es6|g' ./tsconfig.json
elif [ "$1" =  "5" ]; then
  sed -i 's|es6|es5|g' ./tsconfig.json
fi
