import sys
import getopt

opts, args = getopt.getopt(sys.argv[1:], 'f:m:')
print(opts)
print(args)