.class Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ViewFinderListener;
.super Ljava/lang/Object;
.source "SettingsDialogCapturingMode.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ViewFinderListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "motion"

    .prologue
    .line 152
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;

    const v1, 0x7f0d0075

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->findViewById(I)Landroid/view/View;

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

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->back()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->access$300(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
