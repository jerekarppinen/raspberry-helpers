LUMI=$(php luminescence.php)

if [ "$LUMI" = "0" ]; then
        python dim.py
else
        python bright.py
fi

