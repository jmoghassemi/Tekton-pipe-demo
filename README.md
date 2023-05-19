# Tekton-pipe-demo
some tasks file for a tekton pipeline
Installing Tekton

Do the following steps in this order.
Go to this git repo: https://github.com/JOJO840/Tekton-pipe-demo
then do a: git clone https://github.com/JOJO840/Tekton-pipe-demo.git
or with the ssh method:  git clone git@github.com:JOJO840/Tekton-pipe-demo.git
Run the bash file ./tekton-cmds.sh, this command will install Tekton pipelines and dashboard and also get the updates from apt library.

If you run this cmd ´kubectl get ns´ you will now see a new namespace where tekton-pipelines lives. 





To see the every pod in that namespace type in this cmd 
´kubectl get all -n tekton-pipelines´


To connect to the Tekton dashboard svc write in this cmd:
kubectl port-forward -n <namespace> svc/<svc.name> port number
in our case: 
kubectl port-forward -n tekton-pipelines svc/tekton-dashboard 9097

type in localhost:9097 in your browser, we use chrome. This will redirect you to the Tekton dashboard.




Tekton Import Resources:
To make a pipeline in Tekton we will use the 2 files in the github repo pipeline.yaml and tasks.yaml. https://github.com/JOJO840/Tekton-pipe-demo/tree/main


 Steps for pipeline:
For Tekton to import and create resources to your cluster it needs permission to do so. We can get it at Tektons site at https://tekton.dev/docs/dashboard/tutorial/ and use the copy to clipboard icon and paste in the commands in your cli.
 
