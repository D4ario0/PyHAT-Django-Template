# Define commands
LIVE_RELOAD := python3.12 manage.py livereload
RUN_SERVER := python3.12 manage.py runserver
STOP_SERVER := pkill -f "python3.12 manage.py"

TAILWIND_WATCH := tailwindcss -i ./static/css/input.css -o ./static/css/output.css -w
TAILWIND_MINIFY := tailwindcss -i ./static/css/input.css -o ./static/css/output.css -m

# Targets
.PHONY: run run-live-reload run-server watch-tailwind minify-tailwind stop help

run:
	@echo "Starting live reload, Django server, and Tailwind CSS..."
	@echo "Use Ctrl+C to stop all processes."
	@$(LIVE_RELOAD) & $(RUN_SERVER) & $(TAILWIND_WATCH)

run-live-reload:
	@echo "Starting live reload..."
	@echo "Use Ctrl+C to stop the process."
	@$(LIVE_RELOAD)

run-server:
	@echo "Starting Django server..."
	@echo "Use Ctrl+C to stop the process."
	@$(RUN_SERVER)

watch-tailwind:
	@echo "Starting Tailwind CSS..."
	@echo "Use Ctrl+C to stop the process."
	@$(TAILWIND_WATCH)

minify-tailwind:
	@echo "Minifying CSS"
	@$(TAILWIND_MINIFY)

stop:
	@echo "Stopping Server"
	@$(STOP_SERVER)

help:
	@echo "Available commands:"
	@echo "  make run              - Start live reload, Django server, and Tailwind CSS (use Ctrl+C to stop)"
	@echo "  make run-live-reload  - Start only the live reload server"
	@echo "  make run-server       - Start only the Django server"
	@echo "  make watch-tailwind   - Start only the Tailwind CSS watch process"
	@echo "  make minify-tailwind  - Minify Tailwind CSS classes"
	@echo "  make help             - Show this help message"
	@echo "  make stop			   - Kills all server related processes"