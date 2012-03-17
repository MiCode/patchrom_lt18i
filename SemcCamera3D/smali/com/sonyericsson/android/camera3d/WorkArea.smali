.class public Lcom/sonyericsson/android/camera3d/WorkArea;
.super Ljava/lang/Object;
.source "WorkArea.java"


# static fields
.field public static final OUTBUFFER_MAX_SIZE:I = 0x8fe801

.field private static final sInstance:Lcom/sonyericsson/android/camera3d/WorkArea;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mIsBufferLocked:Z

.field private mReferenceCount:I

.field private mWorkArea:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera3d/WorkArea;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/WorkArea;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/WorkArea;->sInstance:Lcom/sonyericsson/android/camera3d/WorkArea;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "WorkArea"

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->TAG:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mIsBufferLocked:Z

    .line 44
    iput v1, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mReferenceCount:I

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera3d/WorkArea;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sonyericsson/android/camera3d/WorkArea;->sInstance:Lcom/sonyericsson/android/camera3d/WorkArea;

    return-object v0
.end method


# virtual methods
.method public alloc(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mWorkArea:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mWorkArea:[B

    array-length v0, v0

    if-eq v0, p1, :cond_1

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mWorkArea:[B

    .line 57
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mWorkArea:[B

    .line 59
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mReferenceCount:I

    .line 60
    return-void
.end method

.method public lock(I)[B
    .locals 2
    .parameter "size"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mWorkArea:[B

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mWorkArea:[B

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size of request is longer than allocated memory size\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mIsBufferLocked:Z

    if-nez v0, :cond_2

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mIsBufferLocked:Z

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mWorkArea:[B

    goto :goto_0

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Work area has already been used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mReferenceCount:I

    .line 99
    iget v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mReferenceCount:I

    if-gtz v0, :cond_0

    .line 102
    iput v1, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mReferenceCount:I

    .line 103
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mIsBufferLocked:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mWorkArea:[B

    .line 106
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mIsBufferLocked:Z

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/WorkArea;->mIsBufferLocked:Z

    .line 94
    :cond_0
    return-void
.end method
