#!/bin/bash

matlab -r "[mse, mae, cc] = mpeg_based_pred('FILENAME', NUM_FRAMES, WIDTH, HEIGHT, BLOCK_WIDTH, BLOCK_HEIGHT, OPT_DELTA, [OPT_FRAMES], [OPT_BLOCKS], OPT_SWAP_MAT, LOSS_RATE, SEED); fh = fopen(['/u/yichao/anomaly_compression/condor_data/subtask_mpeg/condor/output/mpeg_based_pred.FILENAME.NUM_FRAMES.WIDTH.HEIGHT.BLOCK_WIDTH.BLOCK_HEIGHT.OPT_DELTA.OPT_FRAME_BLOCK.OPT_SWAP_MAT.LOSS_RATE.SEED.txt'], 'w'); fprintf(fh, '%f, %f, %f\n', mse, mae, cc); fclose(fh); exit;"