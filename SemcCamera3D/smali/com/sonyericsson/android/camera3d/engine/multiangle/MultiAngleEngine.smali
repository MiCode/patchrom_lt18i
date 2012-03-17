.class public Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;
.super Ljava/lang/Object;
.source "MultiAngleEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native free()V
.end method

.method public static native getDisparityOffset()I
.end method

.method public static native getErrorID()I
.end method

.method public static native getLimitNumDiscardFrames()I
.end method

.method public static native getState()I
.end method

.method public static native getStitchedPercentage()D
.end method

.method public static native getStitchedRect(ILandroid/graphics/Rect;)V
.end method

.method public static native getThresholdCounterMoving()I
.end method

.method public static native getViewPointOffset()I
.end method

.method public static native init(IIII[Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;)V
.end method

.method public static native putImageYuv420Sp(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;Lcom/sonyericsson/android/camera3d/engine/multiangle/PutImageCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera3d/engine/common/StitchException;
        }
    .end annotation
.end method

.method public static native setCallback(Lcom/sonyericsson/android/camera3d/engine/multiangle/PutImageCallback;)V
.end method

.method public static native setDisparityOffset(I)V
.end method

.method public static native setLimitGmvMoving(II)V
.end method

.method public static native setLimitNumDiscardFrames(I)V
.end method

.method public static native setMinimumOutSize(II)V
.end method

.method public static native setThresholdCounterMoving(I)V
.end method

.method public static native setViewPointOffset(I)V
.end method

.method public static native start()V
.end method

.method public static native stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera3d/engine/common/StitchException;
        }
    .end annotation
.end method
