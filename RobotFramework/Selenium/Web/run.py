import os
import subprocess
from datetime import datetime

# Calculate the output directory based on a dynamic condition
base_dir = os.path.abspath("results")
timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
output_dir = os.path.join(base_dir, timestamp)

# Ensure the directory exists
os.makedirs(output_dir, exist_ok=True)

test_case = "WebSuite - Web Inputs TC"
test_suite = "TestSuite/WebSuite.robot"    # Replace with your actual test directory or file

# Run Robot Framework with the calculated paths
subprocess.run([
    "robot",
    "--outputdir", output_dir,
    "--log", "log.html",
    "--report", "report.html",
    "--output", "output.xml",
    "--test", test_case,
    test_suite          
])