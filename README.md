# GlobalId

Problem

Imagine you are building a system to assign unique numbers to each host that you manage. You want the ids to be guaranteed unique i.e. no UUIDs.  Since these ids are globally unique, each id can only be given out at most once. The ids are 64 bits long.

Your service is composed of a set of nodes, each running one process serving ids.  A caller will connect to one of the nodes and ask it for a globally unique id.  There are a fixed number of nodes in the system, up to 1024.  Each node has a numeric id, 0 <= id <= 1023. Each node knows its id at startup and that id never changes for the node.

When a caller requests a new id, the node it connects to calls its internal get_id function to get a new, globally unique id.  The last_id that the node gave out is passed as a parameter to get_id.

Your task is to implement get_id (interface below).  You are given helper functions for getting the node id and the current timestamp.  There is no need to implement these functions.

You may add other functions to the implementation in order to complete your solution.  If you must modify the interface to get_id to complete your solution, please provide an explanation as to why this change is necessary.

Assume that any node will not receive more than 100,000 requests per second.

Please choose a structure for your global id and describe it.  For each part of your structure, please explain why it is necessary and include any defining information such as size (in bits).  If applicable, explain how the size of the section is related to the maximal request rate per node.

