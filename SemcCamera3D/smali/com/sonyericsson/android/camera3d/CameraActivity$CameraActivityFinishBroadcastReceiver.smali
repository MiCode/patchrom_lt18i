.class Lcom/sonyericsson/android/camera3d/CameraActivity$CameraActivityFinishBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraActivityFinishBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity$CameraActivityFinishBroadcastReceiver;->this$0:Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/CameraActivity;Lcom/sonyericsson/android/camera3d/CameraActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1765
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraActivity$CameraActivityFinishBroadcastReceiver;-><init>(Lcom/sonyericsson/android/camera3d/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraActivity$CameraActivityFinishBroadcastReceiver;->this$0:Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->abort()V

    .line 1770
    return-void
.end method
