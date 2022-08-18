import tensorflow as tf

gpus = tf.config.list_physical_devices('GPU')
for gpu in gpus:
  print(gpu)
