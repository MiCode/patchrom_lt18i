.class public Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;
.super Landroid/widget/RelativeLayout;
.source "TouchEventGuardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;
    }
.end annotation


# instance fields
.field private mRejectTouchEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;->mRejectTouchEvent:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;->mRejectTouchEvent:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;->mRejectTouchEvent:Z

    .line 57
    return-void
.end method


# virtual methods
.method public getClient()Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView$TouchEventGuard;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;)V

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;->mRejectTouchEvent:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method rejectTouchEvent(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/TouchEventGuardView;->mRejectTouchEvent:Z

    .line 74
    return-void
.end method
