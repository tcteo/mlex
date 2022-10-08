import tensorflow as tf

gpus = tf.config.list_physical_devices('GPU')
print(f'{len(gpus)} devices found')
for gpu in gpus:
  print(gpu)
