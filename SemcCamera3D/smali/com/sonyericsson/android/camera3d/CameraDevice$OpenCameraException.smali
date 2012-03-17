.class public Lcom/sonyericsson/android/camera3d/CameraDevice$OpenCameraException;
.super Ljava/lang/Exception;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenCameraException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x11965c3b9bd6563aL


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "ex"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 132
    return-void
.end method
