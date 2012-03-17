.class Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;
.super Ljava/lang/Object;
.source "ImageBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ImageBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field final mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

.field private mIsUsed:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;->mIsUsed:Z

    .line 68
    return-void
.end method


# virtual methods
.method isUsed()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;->mIsUsed:Z

    return v0
.end method

.method release()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;->mIsUsed:Z

    .line 63
    return-void
.end method

.method retain()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;->mIsUsed:Z

    .line 56
    return-void
.end method
