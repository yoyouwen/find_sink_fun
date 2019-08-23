# .trace -> .filtered: cat xx.trace | grep "trace_log.cc:" | cut -d']' -f2 | cut -d' ' -f2 > xx.filtered

# python sanity.py planninginst.out traffic_light_green.filtered
# Print uniq sinks: python sanity.py planninginst.out traffic_light_green.filtered | cut -d' ' -f4 | sort | uniq
# All trace summary: for f in $(ls *.filtered); do python sanity.py planninginst.out $f | cut -d' ' -f4; done | sort | uniq
import os
import sys

trace_conf = sys.argv[1]
trace_file = sys.argv[2]

sink_bb = {}
sink_func = {}
sink_call = {}
non_sink_bb = {}
non_sink_func = {}
cond_bb = {}
cond_func = {}
cond_taken = {}
cond_not_taken = {}
bb_tag_name = {}
bb_tag_func = {}

entry_bb = {}

conf = open(trace_conf, "r")
for line in conf.readlines():
    line = line.rstrip()
    str = line.split(' ')
    if str[0] == "Sink":
       sink_bb[str[5]] = str[3]
       sink_func[str[5]] = str[2]
       sink_call[str[5]] = str[6]
       bb_tag_name[str[5]] = str[3]
#       print "Sink BB", str[5]
    elif str[0] == "Non-sink":
       non_sink_bb[str[5]] = str[3]
       non_sink_func[str[5]] = str[2]
       bb_tag_name[str[5]] = str[3]
    elif str[0] == "Cond":
       tag = str[5].split(":")[0]
       cond_bb[tag] = str[3]
       cond_func[tag] = str[2]
       cond_taken[tag] = str[8]
       cond_not_taken[tag] = str[11]
       bb_tag_name[tag] = str[3]
       bb_tag_func[tag] = str[2]
       bb_tag_name[str[8]] = str[6]
       bb_tag_func[str[8]] = str[2]
       bb_tag_name[str[11]] = str[9]
       bb_tag_func[str[11]] = str[2]
    elif str[0] == "Entry":
       entry_bb[str[5]] = str[3]

loop_stack = []
sink_dict = {}
non_sink_dict = {}
cond_stack = []
print_stack = []
trace = open(trace_file, "r")
for line in trace.readlines():
    id = line.rstrip()
    if id in entry_bb:
       continue
    if id in sink_bb:
       sink_dict[sink_bb[id]] = True
       # format: caller -> callee (sink)
       print "Sink", sink_func[id], "->", sink_call[id]
    elif id in non_sink_bb:
       non_sink_dict[non_sink_bb[id]] = True

