pipeline{
    agent any
    environment {
        PATH = "/opt/maven/bin:$PATH"
    }

    stages {
        stage('git clone') {
            steps {
                git url: "https://github.com/KanhaiyaITGIT/sonar-artifact-project.git", branch: "main"
            }
        }

        stage('maven build') {
            steps {
                echo "build started"
                sh 'mvn clean install -Dmaven.test.skip=true'
                echo 'build successfully'
            }
        }

        stage('test') {
            steps {
                echo 'test started'
                sh 'mvn surefire-report:report'
                echo 'build succesfull'
            }
        }

        stage('SonarQube analysis') {
            environment {
                sonarHome = tool 'sonar-scanner'
            }

            steps {
                withSonarQubeEnv('sonar-artifact-project') {
                    sh "${sonarHome}/bin/sonar-scanner"
                }
            }
        }
    }
}
