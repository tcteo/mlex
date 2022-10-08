# https://github.com/google/jax/issues/971#issuecomment-508216439
from jax.lib import xla_bridge
platform = xla_bridge.get_backend().platform
# platform will be cpu/gpu/tpu
print(f'{platform=}')
