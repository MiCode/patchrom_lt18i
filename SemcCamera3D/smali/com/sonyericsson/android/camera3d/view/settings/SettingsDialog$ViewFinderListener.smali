.class Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ViewFinderListener;
.super Ljava/lang/Object;
.source "SettingsDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ViewFinderListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "motion"

    .prologue
    .line 302
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 308
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;

    const v1, 0x7f0d0075

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->contains(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;->onValueChanged(Ljava/lang/Object;)V

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
