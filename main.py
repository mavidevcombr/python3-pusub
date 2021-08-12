import time
import datetime

def main():
    while True:
        print("Executed %s" % datetime.datetime.now())
        time.sleep(5)

main()
