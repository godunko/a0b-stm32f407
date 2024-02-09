#!/bin/sh

svd2ada svd/STM32F407.svd \
  --output source \
  --package A0B.SVD.STM32F407 \
  --base-types-package A0B.Types.SVD \
  --boolean \
  --no-vfa-on-types
