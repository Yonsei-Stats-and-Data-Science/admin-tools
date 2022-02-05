All files should be in `/etc/slurm-llnl` if slurm was installed via `apt`.  
`slurm.conf` and `cgroup.conf` should be shared among all nodes within the same cluster.  
`slurmdbd.conf` should be only in the node that runs the `slurmdbd` daemon.  
`gres.conf` should only exist in the node that has the generic resource. 
