# My Cloud Resume

I started building this as a part of the [cloud resume challenge.](https://cloudresumechallenge.dev/)

The live version can be viewed at https://resume.joshrnoll.com

### Usage
1. Install ```azcopy``` if you don't already have it

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

2. Edit ```resume.yaml``` to make updates to the reusme.
3. Run ```python make.py``` to generate a new index.html
4. Copy to Azure blob storage account

```bash
azcopy sync "./src" "https://<storage-account>.blob.core.windows.net/%24web?<sas-token>" --recursive --delete-destination=true
```

