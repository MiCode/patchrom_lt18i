.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;,
        Lcom/android/internal/telephony/IntRangeManager$IntRange;
    }
.end annotation


# static fields
.field private static final INITIAL_CLIENTS_ARRAY_SIZE:I = 0x4


# instance fields
.field private mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    .line 165
    return-void
.end method

.method private tryAddSingleRange(IIZ)Z
    .locals 1
    .parameter "startId"
    .parameter "endId"
    .parameter "selected"

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 533
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract addRange(IIZ)V
.end method

.method public declared-synchronized disableRange(IILjava/lang/String;)Z
    .locals 22
    .parameter "startId"
    .parameter "endId"
    .parameter "client"

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 367
    .local v11, len:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_11

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 369
    .local v16, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 370
    const/16 v19, 0x0

    .line 488
    .end local v16           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local p1
    :goto_1
    monitor-exit p0

    return v19

    .line 371
    .restart local v16       #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local p1
    :cond_0
    :try_start_1
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v19

    if-gt v0, v1, :cond_10

    .line 374
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object v4, v0

    .line 377
    .local v4, clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 378
    .local v7, crLength:I
    const/16 v19, 0x1

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 379
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 380
    .local v5, cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->client:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 382
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 384
    const/16 v19, 0x1

    goto :goto_1

    .line 386
    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .line 389
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 397
    .end local v5           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_3
    const/high16 v10, -0x8000

    .line 398
    .local v10, largestEndId:I
    const/16 v18, 0x0

    .line 400
    .local v18, updateStarted:Z
    const/4 v6, 0x0

    .local v6, crIndex:I
    :goto_2
    if-ge v6, v7, :cond_10

    .line 401
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 402
    .restart local v5       #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_e

    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_e

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->client:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 404
    const/16 v19, 0x1

    sub-int v19, v7, v19

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 405
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move v1, v10

    if-ne v0, v1, :cond_4

    .line 407
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 408
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 411
    :cond_4
    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 412
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 413
    move v0, v10

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 414
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 416
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 424
    :cond_6
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    .line 426
    .local v17, rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    if-nez v6, :cond_7

    .line 431
    const/16 v19, 0x1

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move v15, v0

    .line 432
    .local v15, nextStartId:I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v19, v0

    move v0, v15

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 434
    const/16 v18, 0x1

    .line 435
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v20, v15, v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 436
    move v0, v15

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 444
    .end local v15           #nextStartId:I
    :cond_7
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v12, newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    move-object/from16 v8, v17

    .line 448
    .local v8, currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v14, v6, 0x1

    .local v14, nextIndex:I
    :goto_3
    if-ge v14, v7, :cond_b

    .line 449
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 450
    .local v13, nextCr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    move-object v0, v13

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v19, v0

    add-int/lit8 v20, v10, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 451
    if-nez v18, :cond_8

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 453
    const/16 v18, 0x1

    .line 455
    :cond_8
    add-int/lit8 v19, v10, 0x1

    move-object v0, v13

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 456
    iput v10, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 457
    new-instance v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .end local v8           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 461
    .restart local v8       #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_4
    move-object v0, v13

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move v1, v10

    if-le v0, v1, :cond_9

    .line 462
    iget v10, v13, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    .line 448
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 459
    :cond_a
    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 365
    .end local v4           #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v5           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v6           #crIndex:I
    .end local v7           #crLength:I
    .end local v8           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v9           #i:I
    .end local v10           #largestEndId:I
    .end local v11           #len:I
    .end local v12           #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v13           #nextCr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v14           #nextIndex:I
    .end local v16           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v17           #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v18           #updateStarted:Z
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 466
    .restart local v4       #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v5       #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .restart local v6       #crIndex:I
    .restart local v7       #crLength:I
    .restart local v8       #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v9       #i:I
    .restart local v10       #largestEndId:I
    .restart local v11       #len:I
    .restart local v12       #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .restart local v14       #nextIndex:I
    .restart local v16       #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v17       #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v18       #updateStarted:Z
    :cond_b
    if-eqz v18, :cond_d

    .line 467
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v19

    if-nez v19, :cond_c

    .line 468
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 471
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v6

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 473
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 476
    :cond_d
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 480
    .end local v8           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v12           #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v14           #nextIndex:I
    .end local v17           #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local p1
    :cond_e
    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move v1, v10

    if-le v0, v1, :cond_f

    .line 481
    iget v10, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 367
    .end local v4           #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v5           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v6           #crIndex:I
    .end local v7           #crLength:I
    .end local v10           #largestEndId:I
    .end local v18           #updateStarted:Z
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 488
    .end local v16           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_1
.end method

.method public declared-synchronized enableRange(IILjava/lang/String;)Z
    .locals 11
    .parameter "startId"
    .parameter "endId"
    .parameter "client"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 181
    .local v5, len:I
    if-nez v5, :cond_1

    .line 182
    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, v8}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 183
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v9, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const/4 v8, 0x1

    .line 350
    :goto_0
    monitor-exit p0

    return v8

    .line 186
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 190
    :cond_1
    const/4 v7, 0x0

    .local v7, startIndex:I
    :goto_1
    if-ge v7, v5, :cond_18

    .line 191
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 192
    .local v6, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    if-ge p1, v8, :cond_f

    .line 195
    add-int/lit8 v8, p2, 0x1

    iget v9, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    if-ge v8, v9, :cond_3

    .line 197
    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, v8}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 198
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v9, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v8, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 199
    const/4 v8, 0x1

    goto :goto_0

    .line 201
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 203
    :cond_3
    iget v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    if-gt p2, v8, :cond_5

    .line 205
    iget v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    invoke-direct {p0, p1, v8, v9}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 206
    iput p1, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 207
    iget-object v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v10, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 208
    const/4 v8, 0x1

    goto :goto_0

    .line 210
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 214
    :cond_5
    add-int/lit8 v0, v7, 0x1

    .local v0, endIndex:I
    :goto_2
    if-ge v0, v5, :cond_c

    .line 215
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 216
    .local v1, endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v8, p2, 0x1

    iget v9, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    if-ge v8, v9, :cond_8

    .line 218
    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, v8}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 219
    iput p1, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 220
    iput p2, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 222
    iget-object v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v10, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 228
    add-int/lit8 v3, v7, 0x1

    .line 229
    .local v3, joinIndex:I
    move v2, v3

    .local v2, i:I
    :goto_3
    if-ge v2, v0, :cond_6

    .line 230
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 231
    .local v4, joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    iget-object v9, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 232
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 234
    .end local v4           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 236
    .end local v2           #i:I
    .end local v3           #joinIndex:I
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 238
    :cond_8
    iget v8, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    if-gt p2, v8, :cond_b

    .line 241
    iget v8, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    invoke-direct {p0, p1, v8, v9}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 242
    iput p1, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 243
    iget v8, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    iput v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 245
    iget-object v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v10, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 251
    add-int/lit8 v3, v7, 0x1

    .line 252
    .restart local v3       #joinIndex:I
    move v2, v3

    .restart local v2       #i:I
    :goto_4
    if-gt v2, v0, :cond_9

    .line 253
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 254
    .restart local v4       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    iget-object v9, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 255
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 257
    .end local v4           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 259
    .end local v2           #i:I
    .end local v3           #joinIndex:I
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 214
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 265
    .end local v1           #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_c
    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, v8}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 266
    iput p1, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 267
    iput p2, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 269
    iget-object v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v10, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    add-int/lit8 v3, v7, 0x1

    .line 276
    .restart local v3       #joinIndex:I
    move v2, v3

    .restart local v2       #i:I
    :goto_5
    if-ge v2, v5, :cond_d

    .line 277
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 278
    .restart local v4       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    iget-object v9, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 281
    .end local v4           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_d
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 283
    .end local v2           #i:I
    .end local v3           #joinIndex:I
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 286
    .end local v0           #endIndex:I
    :cond_f
    add-int/lit8 v8, p1, 0x1

    iget v9, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    if-gt v8, v9, :cond_17

    .line 287
    iget v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    if-gt p2, v8, :cond_10

    .line 289
    new-instance v8, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 290
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 293
    :cond_10
    add-int/lit8 v0, v7, 0x1

    .restart local v0       #endIndex:I
    :goto_6
    if-ge v0, v5, :cond_17

    .line 294
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 295
    .restart local v1       #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v8, p2, 0x1

    iget v9, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    if-ge v8, v9, :cond_13

    .line 298
    iget v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v8, p2, v9}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 299
    iput p2, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 301
    new-instance v8, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 307
    add-int/lit8 v3, v7, 0x1

    .line 308
    .restart local v3       #joinIndex:I
    move v2, v3

    .restart local v2       #i:I
    :goto_7
    if-ge v2, v0, :cond_11

    .line 309
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 310
    .restart local v4       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    iget-object v9, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 313
    .end local v4           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_11
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 315
    .end local v2           #i:I
    .end local v3           #joinIndex:I
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 317
    :cond_13
    iget v8, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    if-gt p2, v8, :cond_16

    .line 320
    iget v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    add-int/lit8 v8, v8, 0x1

    iget v9, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 321
    iget v8, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    iput v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 323
    new-instance v8, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 329
    add-int/lit8 v3, v7, 0x1

    .line 330
    .restart local v3       #joinIndex:I
    move v2, v3

    .restart local v2       #i:I
    :goto_8
    if-gt v2, v0, :cond_14

    .line 331
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 332
    .restart local v4       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    iget-object v9, v4, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 333
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 335
    .end local v4           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_14
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 337
    .end local v2           #i:I
    .end local v3           #joinIndex:I
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 293
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 190
    .end local v0           #endIndex:I
    .end local v1           #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 346
    .end local v6           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_18
    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, v8}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 347
    iget-object v8, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    invoke-direct {v9, p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 350
    :cond_19
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 178
    .end local v5           #len:I
    .end local v7           #startIndex:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method protected abstract finishUpdate()Z
.end method

.method protected abstract startUpdate()V
.end method

.method public updateRanges()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 499
    iget-object v5, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 500
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 501
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 502
    .local v3, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 503
    .local v4, start:I
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 505
    .local v0, end:I
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 506
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 508
    .local v2, nextNode:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v5, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    add-int/lit8 v6, v0, 0x1

    if-gt v5, v6, :cond_1

    .line 509
    iget v5, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    if-le v5, v0, :cond_0

    .line 510
    iget v0, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {p0, v4, v0, v7}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 514
    iget v4, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 515
    iget v0, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    goto :goto_0

    .line 519
    .end local v2           #nextNode:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_2
    invoke-virtual {p0, v4, v0, v7}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 521
    .end local v0           #end:I
    .end local v3           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v4           #start:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v5

    return v5
.end method
