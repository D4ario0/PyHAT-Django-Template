# PyHAT BoilerPlate (Django - HTMX - Tailwind with Hot Reloading)

This template helps me spin-up web applications quickly.
I am using WSL (Ubunutu 22) and Python 3.12, I also assume you have Tailwind installed either via npm or by setting up the standalone binary adding it to the PATH variables. 

If OS conditions are note met, simply open the makefile and change it according to your shell, path or tailwind installations.
```
	make run              - Start live reload, Django server, and Tailwind CSS (use Ctrl+C to stop)"
	make run-live-reload  - Start only the live reload server"
	make run-server       - Start only the Django server"
	make watch-tailwind   - Start only the Tailwind CSS watch process"
	make minify-tailwind  - Minify Tailwind CSS classes for production"
	make help             - Show this help message"
	make stop			  - Kills all server related processes"
```

## Get Started
1. `Clone` this repository
2. Create a virtual environment `python -m venv .venv`
3. Install the dependencies `pip install -r requirements.txt`
4. Replace all instances of `'project'` with your project name in `manage.py`, `settings.py`, `asgi.py` and `wsgi.py`
5. Run `Migrations`
6. Start working in your Django app as always enjoying hot-realoading and Tailwind set up.