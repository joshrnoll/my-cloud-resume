# My Cloud Resume

This project implements a cloud-hosted resume website, originally started as part of the [Cloud Resume Challenge](https://cloudresumechallenge.dev/). The resume is deployed to Azure Blob Storage and accessible at https://resume.joshrnoll.com.

## How It Works

The project uses a hybrid resume generation system with `resume.yaml` as the single source of truth:

- **Content**: Resume data is stored in `resume.yaml` using the [RenderCV schema format](https://docs.rendercv.com/user_guide/yaml_input_structure/cv/)
- **Build Process**: Running `python make.py` generates two outputs:
  - **HTML**: Rendered via Jinja2 template (`templates/resume.html.jinja`) for web display
  - **PDF**: Generated via `rendercv` CLI tool for download
- **Deployment**: Both `index.html` and `resume.pdf` are copied to the `src/` directory and synced to Azure Blob Storage
- **CI/CD**: Gitea Actions automatically builds and deploys the site on every push to the main branch

The generated resume website includes action buttons for LinkedIn, GitHub, personal website, and PDF download.

## AI Assisted Resume Tailoring

The project also includes a [Goose recipe](https://block.github.io/goose/docs/guides/recipes/) for AI assisted resume tailoring. To use the recipe:

1. Ensure that you have the [Goose CLI](https://block.github.io/goose/docs/quickstart#install-goose) installed and configured with your preferred provider.

2. Ensure that you have added the Developer and Todo extensions using `goose configure`

3. Run the following command:

```bash
goose run --recipe recipe.yaml <job-posting-url-or-job-title>
```

You can pass either the url to a specific job posting, or provide a generic job title such as "Software Engineer"

Goose will checkout a new branch named after the job title, tailor `resume.yaml` and run `make.py` to generate the HTML and PDF files.

## Setting up a developer environment

1. Install `azcopy` if you don't already have it

```
brew install azcopy
```

1. Set up the python venv

```
python -m venv ./venv
```

```
source ./venv/bin/activate
```

```
pip install -r requirements.txt
```

2. Edit `resume.yaml` to make updates to the reusme.
3. Run `python make.py` to generate a new index.html
4. Copy to Azure blob storage account

```bash
azcopy sync "./src" "https://<storage-account>.blob.core.windows.net/%24web?<sas-token>" --recursive --delete-destination=true
```
