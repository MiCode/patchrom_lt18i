.class public Lcom/sonyericsson/android/camera3d/util/PagingCursor;
.super Ljava/lang/Object;
.source "PagingCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PagingCursor"


# instance fields
.field private mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

.field private mDataSetObservable:Landroid/database/DataSetObservable;

.field private final mDatabaseAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

.field private final mOrder:Ljava/lang/String;

.field private final mPagingSize:I

.field private mPosition:I

.field private mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

.field private mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

.field private final mProtection:[Ljava/lang/String;

.field private mTotalNum:I

.field private final mUri:Landroid/net/Uri;

.field private final mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "providerAccessGateway"
    .parameter "uri"
    .parameter "protection"
    .parameter "where"
    .parameter "order"
    .parameter "pagingSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    .line 43
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    .line 44
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPosition:I

    .line 52
    iput v3, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    .line 53
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 62
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Param"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_1
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mUri:Landroid/net/Uri;

    .line 66
    iput p6, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPagingSize:I

    .line 68
    array-length v1, p3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mProtection:[Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mProtection:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mProtection:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {p3, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput-object p4, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mWhere:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mOrder:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mDatabaseAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    .line 75
    iget v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPagingSize:I

    if-lez v1, :cond_4

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->getTotalCount()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    .line 77
    iget v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    if-gez v1, :cond_2

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 83
    :cond_2
    iget v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPagingSize:I

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->queryWithLimitOffset(II)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_3

    .line 87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 89
    :cond_3
    new-instance v1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    invoke-direct {v1, v0, v3}, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;-><init>(Landroid/database/Cursor;I)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    .line 101
    :goto_0
    return-void

    .line 92
    .end local v0           #c:Landroid/database/Cursor;
    :cond_4
    iget v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPagingSize:I

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->queryWithLimitOffset(II)Landroid/database/Cursor;

    move-result-object v0

    .line 93
    .restart local v0       #c:Landroid/database/Cursor;
    if-nez v0, :cond_5

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 98
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    .line 99
    new-instance v1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    invoke-direct {v1, v0, v3}, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;-><init>(Landroid/database/Cursor;I)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    goto :goto_0
.end method

.method private getContainer(I)Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 351
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-object v0

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->isContain(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    goto :goto_0

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->isContain(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->swapCursorContainer(Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;)V

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    goto :goto_0

    .line 362
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->isContain(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->swapCursorContainer(Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;)V

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->swapCursorContainer(Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;)V

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    goto :goto_0
.end method

.method private getTotalCount()J
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mDatabaseAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mProtection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mWhere:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mOrder:Ljava/lang/String;

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v7

    .line 116
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 117
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v8, v0

    .line 118
    .local v8, num:J
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 121
    .end local v8           #num:J
    :goto_0
    return-wide v8

    :cond_0
    const-wide/16 v8, -0x1

    goto :goto_0
.end method

.method private queryWithLimitOffset(II)Landroid/database/Cursor;
    .locals 8
    .parameter "limit"
    .parameter "offset"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mDatabaseAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mProtection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mWhere:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mOrder:Ljava/lang/String;

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v7

    .line 399
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 406
    :cond_0
    return-object v7
.end method

.method private shiftCache(I)Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;
    .locals 4
    .parameter "position"

    .prologue
    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    .line 389
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    .line 390
    iget v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPagingSize:I

    div-int v2, p1, v2

    iget v3, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPagingSize:I

    mul-int v1, v2, v3

    .line 391
    .local v1, offset:I
    iget v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPagingSize:I

    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->queryWithLimitOffset(II)Landroid/database/Cursor;

    move-result-object v0

    .line 392
    .local v0, cur:Landroid/database/Cursor;
    new-instance v2, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;-><init>(Landroid/database/Cursor;I)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    .line 393
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    return-object v2

    .line 393
    .end local v0           #cur:Landroid/database/Cursor;
    .end local v1           #offset:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private swapCursorContainer(Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;)V
    .locals 4
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 374
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    .line 375
    .local v0, c:Landroid/database/Cursor;
    iget v2, p1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mStartIndex:I

    .line 376
    .local v2, start:I
    iget v1, p1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mSize:I

    .line 377
    .local v1, size:I
    iget-object v3, p2, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    iput-object v3, p1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    .line 378
    iget v3, p2, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mStartIndex:I

    iput v3, p1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mStartIndex:I

    .line 379
    iget v3, p2, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mSize:I

    iput v3, p1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mSize:I

    .line 380
    iput-object v0, p2, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    .line 381
    iput v2, p2, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mStartIndex:I

    .line 382
    iput v1, p2, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mSize:I

    .line 383
    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 543
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_3
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    .line 111
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    goto :goto_0
.end method

.method public commitUpdates()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 534
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevToCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v0, :cond_2

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    goto :goto_0
.end method

.method public deleteRow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public getBlob(I)[B
    .locals 2
    .parameter "columnIndex"

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v0, :cond_0

    new-array v0, v1, [B

    .line 142
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    new-array v0, v1, [B

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    goto :goto_0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "columnName"

    .prologue
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 165
    :goto_0
    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    .line 171
    :goto_0
    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 177
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPagingSize:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 178
    :cond_2
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter "columnIndex"

    .prologue
    const-wide/16 v0, 0x0

    .line 182
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-wide v0

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "columnIndex"

    .prologue
    const/4 v0, 0x0

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "columnIndex"

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "columnIndex"

    .prologue
    const-wide/16 v0, 0x0

    .line 206
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-wide v0

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPosition:I

    return v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "columnIndex"

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 224
    :goto_0
    return-object v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public hasUpdates()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 232
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPosition:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPosition:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 266
    iget v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPosition:I

    add-int v0, v1, p1

    .line 267
    .local v0, newpos:I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->moveToPosition(I)Z

    move-result v1

    return v1
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, cc:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;
    iget v3, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    if-lez v3, :cond_0

    .line 285
    iget v3, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 286
    .local v1, tmpPosition:I
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->getContainer(I)Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    move-result-object v0

    .line 287
    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->shiftCache(I)Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    move-result-object v0

    .line 291
    .end local v1           #tmpPosition:I
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPosition:I

    .line 292
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v3, :cond_2

    .line 295
    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    iget v3, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPosition:I

    iget v4, v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;->mStartIndex:I

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 305
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 309
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->close()V

    .line 314
    iget v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPagingSize:I

    if-lez v1, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->getTotalCount()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    .line 316
    iget v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    if-gez v1, :cond_0

    .line 317
    iput v3, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    .line 319
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPagingSize:I

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->queryWithLimitOffset(II)Landroid/database/Cursor;

    move-result-object v0

    .line 328
    .local v0, c:Landroid/database/Cursor;
    :goto_0
    new-instance v1, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    invoke-direct {v1, v0, v3}, Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;-><init>(Landroid/database/Cursor;I)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera3d/util/PagingCursor$CursorContainer;

    .line 329
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 330
    const/4 v1, 0x1

    return v1

    .line 321
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    iget v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mPagingSize:I

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->queryWithLimitOffset(II)Landroid/database/Cursor;

    move-result-object v0

    .line 322
    .restart local v0       #c:Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 323
    iput v3, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    goto :goto_0

    .line 325
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mTotalNum:I

    goto :goto_0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 335
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 340
    return-void
.end method

.method public supportsUpdates()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 344
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 348
    return-void
.end method

.method public updateBlob(I[B)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public updateDouble(ID)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public updateFloat(IF)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public updateInt(II)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public updateLong(IJ)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public updateShort(IS)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1
    .parameter "columnIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method
