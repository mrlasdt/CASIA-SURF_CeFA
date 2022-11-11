from at_learner_core.trainer import Runner
from models.wrappers.rgb_simple_wrapper import RGBSimpleWrapper
from models.wrappers.rgb_transformer_wrapper import RGBVideoWrapper
from models.wrappers.multi_modal_wrapper import MultiModalWrapper
from models.wrappers.sdnet_wrapper import SDNetWrapper
from models.wrappers.dlas_wrapper import DLASWrapper

from at_learner_core.datasets.dataset_manager import DatasetManager
from distutils.dir_util import copy_tree
from pathlib import Path


class RGBRunner(Runner):
    def __init__(self, config, train=True):
        super().__init__(config, train=train)

    def _init_wrapper(self):
        if self.config.wrapper_config.wrapper_name == 'RGBSimpleWrapper':
            self.wrapper = RGBSimpleWrapper(self.config.wrapper_config)
        elif self.config.wrapper_config.wrapper_name == 'RGBVideoWrapper':
            self.wrapper = RGBVideoWrapper(self.config.wrapper_config)
        elif self.config.wrapper_config.wrapper_name == 'MultiModalWrapper':
            self.wrapper = MultiModalWrapper(self.config.wrapper_config)
        elif self.config.wrapper_config.wrapper_name == 'DLASWrapper':
            self.wrapper = DLASWrapper(self.config.wrapper_config)
        elif self.config.wrapper_config.wrapper_name == 'SDNetWrapper':
            self.wrapper = SDNetWrapper(self.config.wrapper_config)

        if hasattr(self.config.wrapper_config, 'freeze_weights') and self.config.wrapper_config.freeze_weights:
            import re
            if type(self.config.wrapper_config.freeze_weights) == str:
                regexes = [self.config.wrapper_config.freeze_weights]
            else:
                regexes = self.config.wrapper_config.freeze_weights

            for param_name, param in self.wrapper.named_parameters():
                for regex in regexes:
                    if re.search(regex, param_name):
                        param.requires_grad = False
                        break

        self.wrapper = self.wrapper.to(self.device)

    def _init_loaders(self):
        self.train_loader = DatasetManager.get_dataloader(self.config.datalist_config.trainlist_config,
                                                          self.config.train_process_config)

        self.val_loader = DatasetManager.get_dataloader(self.config.datalist_config.testlist_configs,
                                                        self.config.train_process_config,
                                                        shuffle=False)

    def _process_on_epoch_start(self):
        """
        This method was created for preprocessing before the beginning of epoch.
        For example, change dataset indices.
        :return:
        """
        save_dir_in_colab = Path(self.config.checkpoint_config.save_dir_in_colab).resolve()
        save_dir_in_local = Path(self.config.checkpoint_config.out_path).resolve()
        if save_dir_in_colab.exists() and save_dir_in_local.exists():
            copy_tree(str(save_dir_in_local), str(save_dir_in_colab))
