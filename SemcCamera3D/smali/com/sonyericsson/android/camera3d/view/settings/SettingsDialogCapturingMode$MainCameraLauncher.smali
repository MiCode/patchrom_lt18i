.class Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;
.super Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;
.source "SettingsDialogCapturingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainCameraLauncher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "motion"

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 190
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    const-string v2, "com.sonyericsson.camera.intent.extra.CAPTURING_MODE"

    check-cast v0, Ljava/lang/String;

    .end local v0           #tag:Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/CameraIntent;->convertCapturingModeToIntent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launchMainCamera(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->finish()V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
