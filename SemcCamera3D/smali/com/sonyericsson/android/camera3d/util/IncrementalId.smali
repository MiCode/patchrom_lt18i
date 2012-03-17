.class public final Lcom/sonyericsson/android/camera3d/util/IncrementalId;
.super Ljava/lang/Object;
.source "IncrementalId.java"


# static fields
.field public static final INCREMENTAL_INVALID:I = -0x1

.field private static final INCREMENTAL_MAX:I = 0x7ffffffe

.field private static final INCREMENTAL_MIN:I

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/util/IncrementalId;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/util/IncrementalId;->mId:I

    .line 57
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 78
    sget-object v1, Lcom/sonyericsson/android/camera3d/util/IncrementalId;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sonyericsson/android/camera3d/util/IncrementalId;->mId:I

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNext()I
    .locals 3

    .prologue
    .line 65
    sget-object v1, Lcom/sonyericsson/android/camera3d/util/IncrementalId;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/IncrementalId;->mId:I

    const v2, 0x7ffffffe

    if-lt v0, v2, :cond_0

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/util/IncrementalId;->mId:I

    .line 69
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/IncrementalId;->mId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/util/IncrementalId;->mId:I

    .line 70
    iget v0, p0, Lcom/sonyericsson/android/camera3d/util/IncrementalId;->mId:I

    monitor-exit v1

    return v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
