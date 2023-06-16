# workspace/2/notes.md


### 1. Get our vulnerable web app to this demonstration

```bash
bash get_webapp.sh
```

### 2. Use Terraform to create our image and provide it with Docker

```bash
terraform plan -out plan

terraform apply plan
```

### 3. To destroy, use

```bash
terraform destroy
```