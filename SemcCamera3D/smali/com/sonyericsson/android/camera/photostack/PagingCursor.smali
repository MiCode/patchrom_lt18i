.class public Lcom/sonyericsson/android/camera/photostack/PagingCursor;
.super Ljava/lang/Object;
.source "PagingCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

.field private mDataSetObservable:Landroid/database/DataSetObservable;

.field private mExtendedActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/camera3d/ExtendedActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsEnable:Z

.field private final mPagingSize:I

.field private final mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

.field private mPosition:I

.field private mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

.field private mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

.field private mTotalNum:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;ILjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "params"
    .parameter "pagingSize"
    .parameter "tag"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    .line 47
    iput-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    .line 48
    iput-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    .line 53
    const/4 v2, -0x1

    iput v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPosition:I

    .line 54
    iput v4, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    .line 55
    new-instance v2, Landroid/database/DataSetObservable;

    invoke-direct {v2}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->TAG:Ljava/lang/String;

    .line 61
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 62
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Param"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_1
    iput-object p2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mUri:Landroid/net/Uri;

    .line 65
    iput p4, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPagingSize:I

    .line 66
    iput-object p3, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    .line 67
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mExtendedActivity:Ljava/lang/ref/WeakReference;

    .line 69
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPagingSize:I

    if-lez v2, :cond_5

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->getTotalCount()J

    move-result-wide v2

    long-to-int v1, v2

    .line 71
    .local v1, totalNum:I
    if-gez v1, :cond_2

    .line 74
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mIsEnable:Z

    .line 75
    iput v4, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    .line 76
    iput-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    .line 112
    .end local v1           #totalNum:I
    :goto_0
    return-void

    .line 78
    .restart local v1       #totalNum:I
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    if-le v1, v2, :cond_3

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    iput v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    .line 84
    :goto_1
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->getLimit(I)I

    move-result v2

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->queryWithLimitOffset(II)Landroid/database/Cursor;

    move-result-object v0

    .line 85
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_4

    .line 88
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mIsEnable:Z

    .line 89
    iput v4, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    .line 90
    iput-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    goto :goto_0

    .line 81
    .end local v0           #c:Landroid/database/Cursor;
    :cond_3
    iput v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    goto :goto_1

    .line 92
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_4
    iput-boolean v6, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mIsEnable:Z

    .line 93
    iput v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    .line 94
    new-instance v2, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    invoke-direct {v2, v0, v4}, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;-><init>(Landroid/database/Cursor;I)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    goto :goto_0

    .line 99
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #totalNum:I
    :cond_5
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->getLimit(I)I

    move-result v2

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->queryWithLimitOffset(II)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    .restart local v0       #c:Landroid/database/Cursor;
    if-nez v0, :cond_6

    .line 103
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mIsEnable:Z

    .line 104
    iput v4, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    .line 105
    iput-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    goto :goto_0

    .line 107
    :cond_6
    iput-boolean v6, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mIsEnable:Z

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    .line 109
    new-instance v2, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    invoke-direct {v2, v0, v4}, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;-><init>(Landroid/database/Cursor;I)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    goto :goto_0
.end method

.method private getContainer(I)Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 408
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-nez v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-object v0

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->isContain(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    goto :goto_0

    .line 414
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->isContain(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->swapCursorContainer(Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;)V

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    goto :goto_0

    .line 419
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->isContain(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->swapCursorContainer(Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;)V

    .line 422
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->swapCursorContainer(Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;)V

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    goto :goto_0
.end method

.method private getLimit(I)I
    .locals 2
    .parameter "startPosition"

    .prologue
    .line 481
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPagingSize:I

    if-gtz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    .line 486
    :goto_0
    return v0

    .line 482
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPagingSize:I

    goto :goto_0

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPagingSize:I

    add-int/2addr v1, p1

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPagingSize:I

    goto :goto_0

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    sub-int/2addr v0, p1

    goto :goto_0
.end method

.method private getTotalCount()J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 131
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mExtendedActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    .line 132
    .local v0, context:Lcom/sonyericsson/android/camera3d/ExtendedActivity;
    if-nez v0, :cond_0

    .line 133
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->TAG:Ljava/lang/String;

    const-string v6, "Context is already released."

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-wide/16 v2, 0x0

    .line 150
    :goto_0
    return-wide v2

    .line 136
    :cond_0
    new-instance v4, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    invoke-direct {v4}, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;-><init>()V

    .line 137
    .local v4, params:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    iput-object v5, v4, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 138
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    iput-object v5, v4, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 139
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    iput-object v5, v4, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    .line 140
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    iput-object v5, v4, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 141
    iput v6, v4, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    .line 142
    iput v6, v4, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->offset:I

    .line 143
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mUri:Landroid/net/Uri;

    invoke-static {v5, v6, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v1

    .line 145
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 146
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    int-to-long v2, v5

    .line 147
    .local v2, num:J
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 150
    .end local v2           #num:J
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private queryWithLimitOffset(II)Landroid/database/Cursor;
    .locals 5
    .parameter "limit"
    .parameter "offset"

    .prologue
    .line 455
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mExtendedActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    .line 456
    .local v1, context:Lcom/sonyericsson/android/camera3d/ExtendedActivity;
    if-nez v1, :cond_1

    .line 457
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->TAG:Ljava/lang/String;

    const-string v4, "Context is already released."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    .line 477
    :cond_0
    :goto_0
    return-object v0

    .line 460
    :cond_1
    new-instance v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;-><init>()V

    .line 461
    .local v2, params:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    iput-object v3, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 462
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    iput-object v3, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 463
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    iput-object v3, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    .line 464
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    iput-object v3, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 465
    iput p1, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    .line 466
    iput p2, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->offset:I

    .line 467
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 468
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private shiftCache(I)Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;
    .locals 4
    .parameter "position"

    .prologue
    .line 443
    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 445
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    .line 446
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    .line 447
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPagingSize:I

    div-int v2, p1, v2

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPagingSize:I

    mul-int v1, v2, v3

    .line 448
    .local v1, offset:I
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->getLimit(I)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->queryWithLimitOffset(II)Landroid/database/Cursor;

    move-result-object v0

    .line 449
    .local v0, cur:Landroid/database/Cursor;
    new-instance v2, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;-><init>(Landroid/database/Cursor;I)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    .line 450
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    return-object v2

    .line 450
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

.method private swapCursorContainer(Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;)V
    .locals 4
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 431
    iget-object v0, p1, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    .line 432
    .local v0, c:Landroid/database/Cursor;
    iget v2, p1, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mStartIndex:I

    .line 433
    .local v2, start:I
    iget v1, p1, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mSize:I

    .line 434
    .local v1, size:I
    iget-object v3, p2, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    iput-object v3, p1, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    .line 435
    iget v3, p2, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mStartIndex:I

    iput v3, p1, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mStartIndex:I

    .line 436
    iget v3, p2, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mSize:I

    iput v3, p1, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mSize:I

    .line 437
    iput-object v0, p2, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    .line 438
    iput v2, p2, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mStartIndex:I

    .line 439
    iput v1, p2, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mSize:I

    .line 440
    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 626
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_3
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    .line 127
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    goto :goto_0
.end method

.method public commitUpdates()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 607
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
    .line 617
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrev2Cur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPrevCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-nez v0, :cond_2

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    goto :goto_0
.end method

.method public deleteRow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 175
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    goto :goto_0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

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
    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 199
    :cond_0
    const-string v0, ""

    .line 201
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 206
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 208
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    .line 215
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPagingSize:I

    if-gtz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 217
    :cond_2
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 222
    :cond_0
    const-wide/16 v0, 0x0

    .line 224
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 229
    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 243
    :cond_0
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 250
    :cond_0
    const-wide/16 v0, 0x0

    .line 252
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPosition:I

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 261
    :cond_0
    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 268
    :cond_0
    const-string v0, ""

    .line 270
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public hasUpdates()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 278
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPosition:I

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 289
    :cond_0
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mIsEnable:Z

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 300
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPosition:I

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 301
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
    .line 305
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 309
    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPosition:I

    add-int v0, v1, p1

    .line 310
    .local v0, newpos:I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->moveToPosition(I)Z

    move-result v1

    return v1
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, cc:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;
    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    if-lez v3, :cond_0

    .line 328
    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 329
    .local v1, tmpPosition:I
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->getContainer(I)Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    move-result-object v0

    .line 330
    if-nez v0, :cond_0

    .line 331
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->shiftCache(I)Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    move-result-object v0

    .line 334
    .end local v1           #tmpPosition:I
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPosition:I

    .line 335
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    if-nez v3, :cond_2

    .line 338
    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v2, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mCur:Landroid/database/Cursor;

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPosition:I

    iget v4, v0, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;->mStartIndex:I

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 4
    .parameter "observer"

    .prologue
    .line 347
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mExtendedActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    .line 348
    .local v0, context:Lcom/sonyericsson/android/camera3d/ExtendedActivity;
    if-nez v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->TAG:Ljava/lang/String;

    const-string v2, "Context is already released."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mUri:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 357
    return-void
.end method

.method public requery()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->close()V

    .line 363
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mPagingSize:I

    if-lez v2, :cond_2

    .line 364
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->getTotalCount()J

    move-result-wide v2

    long-to-int v1, v2

    .line 365
    .local v1, totalNum:I
    if-gez v1, :cond_0

    .line 366
    const/4 v1, 0x0

    .line 368
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    if-le v1, v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mParams:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    iget v1, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    .line 370
    :cond_1
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->getLimit(I)I

    move-result v2

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->queryWithLimitOffset(II)Landroid/database/Cursor;

    move-result-object v0

    .line 371
    .local v0, c:Landroid/database/Cursor;
    iput v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    .line 380
    .end local v1           #totalNum:I
    :goto_0
    new-instance v2, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    invoke-direct {v2, v0, v4}, Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;-><init>(Landroid/database/Cursor;I)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mCurrentCur:Lcom/sonyericsson/android/camera/photostack/PagingCursor$CursorContainer;

    .line 381
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 382
    const/4 v2, 0x1

    return v2

    .line 373
    .end local v0           #c:Landroid/database/Cursor;
    :cond_2
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->getLimit(I)I

    move-result v2

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->queryWithLimitOffset(II)Landroid/database/Cursor;

    move-result-object v0

    .line 374
    .restart local v0       #c:Landroid/database/Cursor;
    if-nez v0, :cond_3

    .line 375
    iput v4, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    goto :goto_0

    .line 377
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mTotalNum:I

    goto :goto_0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 387
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 392
    return-void
.end method

.method public supportsUpdates()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mExtendedActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    .line 396
    .local v0, context:Lcom/sonyericsson/android/camera3d/ExtendedActivity;
    if-nez v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->TAG:Ljava/lang/String;

    const-string v2, "Context is already released."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PagingCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method public updateBlob(I[B)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 535
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
    .line 589
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
    .line 580
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
    .line 562
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
    .line 571
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
    .line 553
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
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1
    .parameter "columnIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method
