.class Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;
.super Landroid/app/AlertDialog;
.source "MessagePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UncancelableDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 692
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    .line 693
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 694
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 711
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 699
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    #getter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$100(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 704
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
