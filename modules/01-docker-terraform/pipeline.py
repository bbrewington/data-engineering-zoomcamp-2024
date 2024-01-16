import pandas as pd
from argparse import ArgumentParser

# do stuff

if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('--day')

    args = parser.parse_args()
    
    day = args.day

    print(f'job finished successfully for day = {day}')
