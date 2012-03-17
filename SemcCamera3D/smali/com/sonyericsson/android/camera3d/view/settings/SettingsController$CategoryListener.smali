.class Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryListener;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)V
    .locals 0
    .parameter

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1039
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "motion"

    .prologue
    .line 1047
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0034

    if-ne v0, v1, :cond_0

    .line 1048
    const/4 v0, 0x0

    .line 1056
    :goto_0
    return v0

    .line 1051
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1056
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1053
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$CategoryListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->onCategoryTapped(Landroid/view/View;)V

    goto :goto_1

    .line 1051
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
