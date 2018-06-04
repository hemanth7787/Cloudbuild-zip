# Container Builder / Cloudbuild zip tool
zip tool for google Container Builder

To use in your project step

```bash
sudo docker build -t gcr.io/[PROJECT_ID]/zip-tool
sudo gcloud docker -- push gcr.io/[PROJECT_ID]/zip-tool
```
Add below step in you cloudbuild.yaml
```yaml
steps:
- name: 'gcr.io/[my-project-id]/zip-tool'
  args: [ '-x', '/.git*', '-r', 'zipfile.zip', '.']
```
Refer examples/cloudbuild.yaml for build step details
