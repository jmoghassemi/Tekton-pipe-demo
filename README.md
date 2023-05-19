# Tekton-pipe-demo

Run the bash file ./tekton-cmds.sh, this command will install Tekton pipelines and dashboard and also get the updates from apt library.

If you run this cmd ´kubectl get ns´ you will now see a new namespace where tekton-pipelines lives.



To see the every pod in that namespace type in this cmd
´kubectl get all -n tekton-pipelines´


To connect to the Tekton dashboard svc write in this cmd:
kubectl port-forward -n <namespace> svc/<svc.name> port number
in our case:
kubectl port-forward -n tekton-pipelines svc/tekton-dashboard 9097

type in localhost:9097 in your browser. This will redirect you to the Tekton dashboard.

