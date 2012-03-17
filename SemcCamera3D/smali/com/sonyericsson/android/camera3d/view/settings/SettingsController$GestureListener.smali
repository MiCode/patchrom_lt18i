.class Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)V
    .locals 0
    .parameter

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1085
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1135
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1142
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1090
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$800(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$500(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->isLaunchAsOneShotCapturingMode()Z

    move-result v0

    .line 1095
    .local v0, oneShot:Z
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$800(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->isStateHalf()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1100
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$900(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->isSelectable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    const/4 v3, 0x1

    #setter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mHasLongPressed:Z
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1002(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Z)Z

    .line 1103
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mCategory:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$800(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->clearPressed()V

    .line 1106
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    #setter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mLongPressedX:F
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1102(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;F)F

    .line 1107
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    #setter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mLongPressedY:F
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1202(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;F)F

    .line 1108
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$500(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 1110
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1111
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$900(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    move-result-object v3

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->startDragging(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1300(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1150
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1156
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownView:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$900(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->onCategoryTapped(Landroid/view/View;)V

    .line 1122
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mHasLongPressed:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1000(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mDownMotion:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1400(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mTargetButton:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1500(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1124
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #calls: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->createDummyEvent()Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1600(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1125
    .local v0, motion:Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$GestureListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->mTargetButton:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->access$1500(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1130
    .end local v0           #motion:Landroid/view/MotionEvent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
