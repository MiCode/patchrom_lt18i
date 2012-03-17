.class Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnKeyListener;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseViewOnKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)V
    .locals 0
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnKeyListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1009
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnKeyListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1014
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnKeyListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mIsDialogOpen:Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$400(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    sparse-switch p2, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 1028
    :cond_1
    :goto_0
    return v0

    .line 1017
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1018
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnKeyListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v2, v1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    goto :goto_0

    .line 1024
    :sswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$BaseViewOnKeyListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v2, v1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    goto :goto_0

    .line 1015
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method
