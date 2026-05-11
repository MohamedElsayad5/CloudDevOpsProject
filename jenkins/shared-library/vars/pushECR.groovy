def call(repoUrl, imageName, tag) {
    sh """
        docker tag ${imageName}:${tag} ${repoUrl}:${tag}
        docker push ${repoUrl}:${tag}
    """
}