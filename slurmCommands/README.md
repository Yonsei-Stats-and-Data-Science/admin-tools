# Common Slurm Commands

This document goes through common slurm commands for the administrator/user.

- `sinfo`: executable for the admin and user. used for checking node states.
    ```bash
    $ sinfo
    PARTITION AVAIL  TIMELIMIT  NODES  STATE NODELIST
    all*         up   infinite      1   idle cpu-compute
    all*         up   infinite      1   down gpu-compute
    ```

- `scontrol`: admin tool for configuring nodes. able to reboot nodes.
    ```bash
    $ scontrol update nodename=gpu-compute state=resume
    $ sinfo
    PARTITION AVAIL  TIMELIMIT  NODES  STATE NODELIST
    all*         up   infinite      1   idle cpu-compute, gpu-compute
    ```

- `squeue`: admin/user tool for querying jobs in the job queue.
    ```bash
    $ squeue
    JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
    82       all     bash    testy  R       0:09      1 cpu-compute
    ```

- `scancel`: admin/user tool for canceling jobs in the job queue. takes a Job ID as an arguement. note that root user can cancel any jobs and users can only cancel their jobs.
    ```bash
    $ scancel 82
    ```

- `srun`: admin/user tool for running a job on the command line. the following example will create a interactive bash session for 1 node within the cluster.
    ```bash
    $ srun --pty -N 1 bash
    ```

- `sbatch`: admin/user tool for submitting a script; computing specifications, compute time, location for log files, and the script to start on a node.
    ```bash
    $ sbatch some-batch-script.sh
    ```

  an example batch script follows the below syntax.
    ```txt
    #!/bin/bash
    # The interpreter used to execute the script

    #“#SBATCH” directives that convey submission options:

    #SBATCH --job-name=somejobname
    #SBATCH --nodes=1
    #SBATCH --time=01:00
    #SBATCH --account=someaccount
    #SBATCH --partition=all
    #SBATCH --output=/mnt/nas/users/someaccount/somejobname.log

    # The application(s) to execute along with its input arguments and options:

    source activate /opt/miniconda/envs/someenvironment && pip freeze
    ```







