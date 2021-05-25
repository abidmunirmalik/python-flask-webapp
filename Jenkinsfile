// Scripted Pipeline - single-line comment

node('vjenkinsslv03 (waops)') {
    properties(
        [buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '5')), disableConcurrentBuilds()]
    )
    stage('Checkout SCM') {
        git url: 'https://github.com/abidmunirmalik/python-flask-webapp.git'
    }
    stage('Build Image') {
        buildImage()
    }
}
// Step functions
def buildImage() {
    println("Building Docker Image...")
    //def dockerImage = "abidmunirmalik/python-flask-webapp"
    //def appImage = docker.build("${dockerImage}:${BUILD_NUMBER}")
    sh 'docker build -t "abidmunirmalik/python-flask-webapp ."'
}

