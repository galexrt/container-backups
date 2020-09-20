# Roadmap

The roadmap is "dynamic" and not "locked down", meaning it can / will change at any point in time depending on factors such as time, upcoming issues, designs and ideas.

## "v0.1"

A few (bash) scripts for backing up certain applications, nothing more nothing less.

## "v0.2"

A Kubernetes focused approach to have CRDs for application backups.

* CRDs will be `v1alpha1`.
* Backup is the main focus.
    * Restore is targeted for a future version.
* Begin of Golang glue code for the actual "backup jobs" running.

## "v0.3"

* Each application will get its own container image with its dependencies.
* Operator will become smarter in regards to application backups.
* Stabilize backup functionality.

## "v0.4"

* Begin (design) work on restore functionality.
