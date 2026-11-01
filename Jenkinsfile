// Sama konveier nagu .github/workflows/ci.yml töödes test ja konteiner, aga Jenkinsis.
pipeline {
    agent any

    // GitHubi teavitus (webhook) ei jõua VPN-i taha.
    // Seepärast küsib Jenkins ise iga 5 minuti järel, kas harus on uus commit.
    triggers {
        pollSCM('H/5 * * * *')
    }

    stages {
        stage('test') {
            steps {
                sh '''
                    python3 -m venv .venv
                    . .venv/bin/activate
                    pip install -r flask/requirements.txt pytest
                    pytest flask -v
                '''
            }
        }
        stage('konteiner') {
            steps {
                sh 'docker build -t flask-jenkins ./flask'
            }
        }
    }
}
