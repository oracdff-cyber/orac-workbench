@echo off
setlocal
echo [cold-start] Shutting down common local dev servers first...
for %%P in (node.exe python.exe uvicorn.exe flask.exe) do (
  taskkill /F /IM %%P >nul 2>&1
)
echo [cold-start] Starting fresh static server on http://localhost:5173
python -m http.server 5173
