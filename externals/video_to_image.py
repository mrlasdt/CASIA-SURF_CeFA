import imageio
import pandas as pd
from pathlib import Path
import numpy as np
from collections import defaultdict
from tqdm import tqdm
# VID_DATA_DIR = '/mnt/ssd500/hungbnt/liveness_detection/zalo/train/videos'
# IMG_DATA_DIR = '/mnt/ssd500/hungbnt/liveness_detection/zalo/train/images'
# DF_LABEL_PATH = '/mnt/ssd500/hungbnt/liveness_detection/zalo/train/label.csv'
# DF_SAVE_PATH = 'train_zalo.csv'

VID_DATA_DIR = '/mnt/ssd500/hungbnt/liveness_detection/zalo/public/videos'
IMG_DATA_DIR = '/mnt/ssd500/hungbnt/liveness_detection/zalo/public/images'
DF_LABEL_PATH = '/mnt/ssd500/hungbnt/liveness_detection/zalo/train/label.csv'  # ignore if test
DF_SAVE_PATH = 'test_zalo.csv'
IS_TEST = True


NFRAMES_EXTRACTED = 16  # per video
IMG_EXT = ".jpg"  # to save

pvid_data_dir = Path(VID_DATA_DIR)
pvid_paths = pvid_data_dir.glob('*.mp4')
lvid_paths = list(pvid_paths)

pimg_data_dir = Path(IMG_DATA_DIR)
df_label = pd.read_csv(DF_LABEL_PATH, index_col=0)


def gen_img_name_by_frame_index(i_frame: int, n_zeros=3):
    return str(10**n_zeros + i_frame)[1:] + IMG_EXT  # 1 -> 1001 -> 001


ddata = defaultdict(list)
for i in tqdm(range(len(lvid_paths))):
    filename = lvid_paths[i]
    img_dir = pimg_data_dir.joinpath(filename.stem)
    img_dir.mkdir(parents=True, exist_ok=True)  # new folder to store img
    vid = imageio.get_reader(filename, 'ffmpeg')
    nframes = vid.count_frames()
    j_frames = np.linspace(0, nframes - 1, NFRAMES_EXTRACTED, dtype=int)
    for j in j_frames:
        img_path = img_dir.joinpath(gen_img_name_by_frame_index(j))
        imageio.imsave(img_path, vid.get_data(j))
        ddata['rgb_path'].append(str(img_path))
        ddata['video_id'].append(filename.stem)
        if not IS_TEST:
            ddata['label'].append(df_label.loc[lvid_paths[i].name][0])

df_train = pd.DataFrame.from_dict(ddata)
df_train.to_csv(DF_SAVE_PATH, index=False)
