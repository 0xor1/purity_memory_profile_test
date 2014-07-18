#PurityMemoryProfileTest

A simple app used to clearly show memory usage changes when using a purity app.

[Live link.](http://0xor1.github.com/purity_memory_profile_test/)

Enter the command `showComs` then `newClient`, in the coms window messages will periodically
be seen going back and forth between the client and the host. These are the remote garbage collection
messages which have been configured for this particular app to be every 5 seconds. Clicking on the 
`Create A Massive Object` button will create objects on the Host which take up large amounts of memory,
these are represented on the client as squares simply to show they exist. Clicking on the `Delete A
Massive Object` button will tell the application to delete a Massive object, but it will not be free for
garbage collection on the Host until the remote garbage collection sequence has run and confirms there
are no further `Consumers` listening to that `Source` on the client.  