CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 \
python main.py \
kinetics200 \
data/kinetics200/kinetics200_train_list.txt \
data/kinetics200/kinetics200_val_list.txt \
--arch pib_resnet26_3d_v1 \
--dro 0.2 \
--mode 3D \
--t_length 8 \
--t_stride 8 \
--epochs 70 \
--batch-size 128 \
--lr 0.002 \
--lr_steps 40 60 \
--workers 32 \
--eval-freq 2 \
--pretrained \
--pretrained_model models/resnet26.pth \
--resume output/kinetics200_pib_resnet26_3d_v1_3D_length8_stride8_dropout0.2/checkpoint_16epoch.pth