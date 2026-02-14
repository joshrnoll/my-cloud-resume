from jinja2 import Environment, FileSystemLoader
import yaml
import subprocess
import shutil
import os
import re

# Step 1: Run rendercv to generate PDF and other outputs
print("Running rendercv to generate PDF...")
subprocess.run(['rendercv', 'render', 'resume.yaml'], check=True)

# Step 2: Load resume data
with open('resume.yaml', 'r') as f:
    values = yaml.full_load(f)

# Step 3: Define custom Jinja2 filter to convert markdown links to HTML
def markdown_link_to_html(text):
    """Convert markdown links [text](url) to HTML <a> tags"""
    pattern = r'\[([^\]]+)\]\(([^\)]+)\)'
    return re.sub(pattern, r'<a href="\2">\1</a>', text)

# Step 4: Render HTML template
env = Environment(loader = FileSystemLoader('templates'))
env.filters['md_link'] = markdown_link_to_html
template = env.get_template('resume.html.jinja')
output = template.render(values)

# Step 4: Write HTML to src directory
with open('src/index.html', 'w') as f:
    f.write(output)

print("Generated src/index.html")

# Step 5: Copy PDF from rendercv_output to src directory
pdf_source = 'rendercv_output/Josh_Noll_CV.pdf'
pdf_dest = 'src/resume.pdf'

if os.path.exists(pdf_source):
    shutil.copy(pdf_source, pdf_dest)
    print(f"Copied {pdf_source} to {pdf_dest}")
else:
    print(f"Warning: {pdf_source} not found!")