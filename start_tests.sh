source venv/bin/activate

if [ "$1" = "--fast" ]
then
    pytest -s --cov-report term-missing ./tests/ --cov=. -m "not slow"
else
    pytest -s --cov-report term-missing ./tests/ --cov=.
fi

deactivate
