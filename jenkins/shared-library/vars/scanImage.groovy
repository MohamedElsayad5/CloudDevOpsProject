def call(imageName, tag) {
    sh "trivy image ${imageName}:${tag}"
}