.class final Lcom/sonyericsson/android/camera3d/ControllerManager$ExternalMemoryCallback;
.super Ljava/lang/Object;
.source "ControllerManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/ImageManager$ExternalMemoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExternalMemoryCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ControllerManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/ControllerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager$ExternalMemoryCallback;->this$0:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/ControllerManager;Lcom/sonyericsson/android/camera3d/ControllerManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/ControllerManager$ExternalMemoryCallback;-><init>(Lcom/sonyericsson/android/camera3d/ControllerManager;)V

    return-void
.end method


# virtual methods
.method public onExternalMemoryStatusChanged(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager$ExternalMemoryCallback;->this$0:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager$ExternalMemoryCallback;->this$0:Lcom/sonyericsson/android/camera3d/ControllerManager;

    #getter for: Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->access$200(Lcom/sonyericsson/android/camera3d/ControllerManager;)Lcom/sonyericsson/android/camera3d/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 693
    if-nez p1, :cond_1

    .line 694
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager$ExternalMemoryCallback;->this$0:Lcom/sonyericsson/android/camera3d/ControllerManager;

    #getter for: Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->access$200(Lcom/sonyericsson/android/camera3d/ControllerManager;)Lcom/sonyericsson/android/camera3d/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->onMemoryMounted()V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager$ExternalMemoryCallback;->this$0:Lcom/sonyericsson/android/camera3d/ControllerManager;

    #getter for: Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->access$200(Lcom/sonyericsson/android/camera3d/ControllerManager;)Lcom/sonyericsson/android/camera3d/BaseController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/BaseController;->onExternalMemoryError(I)V

    goto :goto_0
.end method
