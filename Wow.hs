elo_q :: Float -> Float
elo_q rating = 10 ** (rating / 400)

expected :: Float -> Float -> Float -> Float
expected qa qb qc = qa / (qa + qb + qc)

expecteds :: Float -> Float -> (Float, Float, Float)
expecteds ra rb = (win_p, draw_p, loss_p) where

    avg xs = sum xs / (fromIntegral . length) xs

    rc :: Float
    rc = (avg [ra, rb]) - 50

    qa :: Float
    qa = elo_q ra

    qb :: Float
    qb = elo_q rb

    qc :: Float
    qc = elo_q rc

    win_p :: Float
    win_p = expected qa qb qc

    draw_p :: Float
    draw_p = expected qc qa qb

    loss_p :: Float
    loss_p = expected qb qa qc
