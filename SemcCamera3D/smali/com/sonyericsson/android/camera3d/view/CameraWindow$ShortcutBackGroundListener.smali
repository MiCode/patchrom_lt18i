.class Lcom/sonyericsson/android/camera3d/view/CameraWindow$ShortcutBackGroundListener;
.super Ljava/lang/Object;
.source "CameraWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/CameraWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutBackGroundListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 2462
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$ShortcutBackGroundListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2462
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$ShortcutBackGroundListener;-><init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "motion"

    .prologue
    const/4 v2, 0x1

    .line 2466
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2473
    :goto_0
    :pswitch_0
    return v2

    .line 2469
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$ShortcutBackGroundListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$2400(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    .line 2470
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$ShortcutBackGroundListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$2500(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->closeDialog()V

    goto :goto_0

    .line 2466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
