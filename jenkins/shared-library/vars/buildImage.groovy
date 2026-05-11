def call(imageName, tag) {
    sh "docker build -t myapp:${env.BUILD_NUMBER} -f FinalProject/Dockerfile FinalProject"
}