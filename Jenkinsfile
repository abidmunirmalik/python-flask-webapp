// Scripted Pipeline - single-line comment

node('master') {
    properties(
        [buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '1')), disableConcurrentBuilds()]
    )
    stage('Checkout SCM') {
        git url: 'https://github.com/abidmunirmalik/python-flask-webapp.git'
    }
    stage('Build') {
        buildImage()
    }
    stage('Deploy') {
        deployImage()
    }
}
// Step functions
def buildImage() {
    println("Building Docker Image...")
    def dockerImage = "abidmunirmalik/python-flask-webapp"
    def appImage = docker.build("${dockerImage}:${BUILD_NUMBER}")
    appImage.tag(["latest"])
}
def deployImage() {
    println("Deploying Docker Image...")
    //def dockerImage = "abidmunirmalik/python-flask-webapp"
    //def appImage = docker.build("${dockerImage}:${BUILD_NUMBER}")
}

