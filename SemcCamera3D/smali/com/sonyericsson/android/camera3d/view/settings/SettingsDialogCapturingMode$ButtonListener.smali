.class Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ButtonListener;
.super Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;
.source "SettingsDialogCapturingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ButtonListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ButtonListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "motion"

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ButtonListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->setValue(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->access$400(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;Landroid/view/View;)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
