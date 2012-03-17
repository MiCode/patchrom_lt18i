.class Lcom/sonyericsson/android/camera3d/CameraController$Inactive;
.super Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Inactive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 0
    .parameter

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Inactive;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2150
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$Inactive;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    return-void
.end method
