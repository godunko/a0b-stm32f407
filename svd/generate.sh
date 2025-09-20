#!/bin/sh

svd2ada STM32F407.svd \
  --output ../source/svd \
  --package A0B.STM32F407.SVD \
  --base-types-package A0B.Types.SVD \
  --boolean \
  --no-elaboration-code-all \
  --no-vfa-on-types
