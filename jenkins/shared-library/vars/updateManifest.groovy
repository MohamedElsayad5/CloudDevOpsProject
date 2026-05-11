def call(filePath, newImage) {
    sh """
        sed -i 's|image: .*|image: ${newImage}|g' ${filePath}
    """
}