pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
        git(url: 'https://github.com/cliffano/swaggy-jenkins', branch: 'master')
      }
    }
    stage('Lint') {
      steps {
        sh 'make lint'
      }
    }
  }
}