node('pod'){
 def app
 checkout scm
 stage('build ansible image'){
  container('docker'){
       app = docker.build("us.gcr.io/sincere-hybrid-274219/ansible")
      }
 }
 stage('push to repo ')
 container('docker'){
         docker.withRegistry('https://us.gcr.io', 'gcr:ClusterGPR') {
              app.push("${env.BUILD_NUMBER}")
              app.push("latest")    
           }
      }
}
