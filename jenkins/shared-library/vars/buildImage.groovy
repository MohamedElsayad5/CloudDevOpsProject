def call(imageName, tag) {
    // الحل الأضمن: تحديد مسار الملف ومسار السياق بوضوح
sh "docker build -t myapp:17 -f ${WORKSPACE}/FinalProject/Dockerfile ${WORKSPACE}/FinalProject"
}