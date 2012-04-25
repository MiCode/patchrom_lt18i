.class Lcom/sonyericsson/android/camera3d/SweepCameraController$Inactive;
.super Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Inactive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 0
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Inactive;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 847
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Inactive;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    return-void
.end method
