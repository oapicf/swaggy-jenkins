pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
        git(url: 'https://github.com/swaggy-jenkins', branch: 'master')
      }
    }
  }
}