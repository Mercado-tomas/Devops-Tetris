## pipeline de jenkins-tetris
pipeline {
    agent any
    
    environment {
        REPO_URL = 'https://github.com/roxsross/bootcamp-devops-2023.git'
        CARPETA = 'Devops-Jenkins-MarioBros'
        DESTINO_CARPETA = '/home/tomas-ubuntu/Escritorio'
        DESTINO_WEB = '/var/www/html'
    }
    
    
    stages {
        stage('Verificar Carpeta') {
            steps {
                script {
                    def carpetaExiste = sh(script: "[ -d ${env.CARPETA} ] && echo 'Existe' || echo 'No existe'", returnStdout:true).trim()
                
                    if (carpetaExiste == 'Existe'){
                        echo "La Carpeta ${env.CARPETA} ya existe, no se clona el repo nuevamente."
                    }
                    else{
                        echo "La carpeta no existe, preparando la clonación.."
                        sh "git clone -b clase2-linux-bash ${env.REPO_URL} ${env.CARPETA}"
                    }
                }
            }
        }
        
        stage('Copiar a Escritorio'){
            steps {
                script {
                    sh """
                    echo "Copiando al escritorio.."
                    sudo mkdir -p ${env.DESTINO_ESCRITORIO}/${env.CARPETA}
                    sudo cp -r ${env.CARPETA}/* ${env.DESTINO_ESCRITORIO}/${env.CARPETA}
                    """
                }
            }
        }
        stage('Copiar a Servidor Web'){
            steps {
                script {
                    sh """
                    echo "Copiando a /var/www/html/devops-jenkins-mariobros"
                    sudo rm -rf ${env.DESTINO_WEB}/devops-jenkins-mariobros
                    sudo mkdir -p ${env.DESTINO_WEB}/devops-jenkins-mariobros
                    sudo cp -r ${env.CARPETA}/* ${env.DESTINO_WEB}/devops-jenkins-mariobros
                    """
                }
            }
        }
        
        
    }
    post {
            success{
                echo 'Despliegue existoso! Puedes verlo en localhost..'
            }
            failure{
                echo 'Hubo un error en el despliegue.'
            }
            
        }
}

