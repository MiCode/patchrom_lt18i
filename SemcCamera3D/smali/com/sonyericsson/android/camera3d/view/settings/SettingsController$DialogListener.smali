.class public Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;
.super Ljava/lang/Object;
.source "SettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)V
    .locals 0
    .parameter

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Ljava/lang/Object;)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1064
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$500(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->isSettingsAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDialogCategory:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$600(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->resetCameraOrder()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$700(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)V

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    .line 1079
    .end local p1
    :goto_0
    return-void

    .line 1074
    .restart local p1
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1075
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setValue(Ljava/lang/String;)V

    .line 1077
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    goto :goto_0
.end method
