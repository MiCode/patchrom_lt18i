.class public Lcom/sonyericsson/android/camera3d/engine/panorama/PanoramaEngine;
.super Ljava/lang/Object;
.source "PanoramaEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native cancelPanorama()V
.end method

.method public static native getOutbufferLength()I
.end method

.method public static native getStitchedPercentage()D
.end method

.method public static native getStitchedSize()I
.end method

.method public static native putImageYuv420Sp(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera3d/engine/common/StitchException;
        }
    .end annotation
.end method

.method public static native setLimitNumDiscardFrames(I)V
.end method

.method public static native setThresholdCounterMoving(I)V
.end method

.method public static native startPanorama2d(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;IIIIII)V
.end method

.method public static native startPanorama3d(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;IIIIIIII)V
.end method

.method public static native stopPanorama2d(Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera3d/engine/common/StitchException;
        }
    .end annotation
.end method

.method public static native stopPanorama3d(Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera3d/engine/common/StitchException;
        }
    .end annotation
.end method
