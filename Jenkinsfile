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
        stage("war Publish") {
            steps {
                script {
                    echo '<--------------- Jar Publish Started --------------->'
                    def server = Artifactory.newServer url: registry + "/artifactory", credentialsId: "artifact-cred"
                    def properties = "buildid=${env.BUILD_ID},commitid=${GIT_COMMIT}"
                    def uploadSpec = """{
                          "files": [
                            {
                              "pattern": "jarstaging/(*)",
                              "target": "artifact-libs-release-local/{1}",
                              "flat": "false",
                              "props": "${properties}",
                              "exclusions": [ "*.sha1", "*.md5"]
                            }
                         ]
                     }"""
                    def buildInfo = server.upload(uploadSpec)
                    buildInfo.env.collect()
                    server.publishBuildInfo(buildInfo)
                    echo '<--------------- Jar Publish Ended --------------->'
                }
            }
        }        
    }
}
