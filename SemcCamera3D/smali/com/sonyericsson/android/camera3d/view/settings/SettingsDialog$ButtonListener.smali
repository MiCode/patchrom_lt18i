.class Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ButtonListener;
.super Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;
.source "SettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ButtonListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ButtonListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "motion"

    .prologue
    .line 323
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 324
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 334
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 329
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ButtonListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ButtonListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;->onValueChanged(Ljava/lang/Object;)V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
