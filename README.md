# maven-git

This git repository creates a docker image for cloning a maven project from GIT_URL followed by running mvn install

```
git clone https://github.com/iitusa/maven-git.git
docker build -t maven-git maven-git/
docker tag maven-git:latest public.ecr.aws/b0n1c8f8/maven-git:latest
docker push public.ecr.aws/b0n1c8f8/maven-git:latest
```

The docker image is uploaded to ECR and is availabe as public.ecr.aws/b0n1c8f8/maven-git:latest
```
docker run --rm -e GIT_URL=https://github.com/iitusa/fem0.git public.ecr.aws/b0n1c8f8/maven-git:latest
```

## Parameters

* GIT_URL repo URL, e.g. https://ghp_your_readonly_token_for_private_repo@github.com/iitusa/fem0.git
* POM_LOC pom.xml location if it is not in the root directory
