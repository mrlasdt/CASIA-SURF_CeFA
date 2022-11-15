import argparse
import os
import pandas as pd

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Options')
    parser.add_argument('--data_path',
                        type=str,
                        help='Path to images folder of data',
                        required=True)

    args = parser.parse_args()

    df = pd.read_csv('externals/train_zalo.csv')
    df['rgb_path'] = df.rgb_path.apply(lambda x: os.path.join(args.data_path, x.split('images/')[-1]))
    df.to_csv('externals/train_zalo.csv', index=False)

    df = pd.read_csv('externals/test_zalo.csv')
    df['rgb_path'] = df.rgb_path.apply(lambda x: os.path.join(args.data_path, os.path.basename(x)))
    df.to_csv('externals/test_zalo.csv', index=False)
