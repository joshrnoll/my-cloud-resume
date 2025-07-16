from jinja2 import Environment, FileSystemLoader
import yaml

with open('./resume.yaml', 'r') as f:
    values = yaml.full_load(f)

env = Environment(loader = FileSystemLoader('./templates'))

template = env.get_template('resume.html.jinja')
output = template.render(values)

with open('./index.html', 'w') as f:
    f.write(output)