.class public abstract Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
.super Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
.source "AppLayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLayer"


# instance fields
.field private mIsActive:Z

.field private mIsOpend:Z

.field private final mMediator:Lcom/sonyericsson/android/camera3d/viewer/Mediator;

.field private final mRootView:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/Mediator;Landroid/widget/RelativeLayout;)V
    .locals 1
    .parameter "mediator"
    .parameter "rootView"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mMediator:Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    .line 157
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mRootView:Landroid/widget/RelativeLayout;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mIsActive:Z

    .line 159
    return-void
.end method


# virtual methods
.method background()V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->onBackground()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mIsActive:Z

    .line 128
    :cond_0
    return-void
.end method

.method close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->isOpend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->onClose()V

    .line 107
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mIsOpend:Z

    .line 108
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mIsActive:Z

    .line 110
    :cond_0
    return-void
.end method

.method foreground(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 1
    .parameter "dataStore"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->onForeground(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mIsActive:Z

    .line 119
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mMediator:Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    return-object v0
.end method

.method public getRootView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mIsOpend:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mIsActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpend()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mIsOpend:Z

    return v0
.end method

.method protected abstract onBackground()V
.end method

.method protected abstract onClose()V
.end method

.method protected abstract onForeground(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
.end method

.method protected abstract onKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method protected abstract onShow(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
.end method

.method protected abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method protected abstract onUpdate(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
.end method

.method open(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 2
    .parameter "dataStore"
    .parameter "outputMode"

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->isOpend()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->onShow(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 89
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mIsOpend:Z

    .line 90
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mIsActive:Z

    .line 92
    :cond_0
    return-void
.end method

.method sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldMirror()Z
    .locals 4

    .prologue
    .line 149
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, checkString:Ljava/lang/String;
    new-instance v1, Ljava/text/Bidi;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 152
    .local v1, temp:Ljava/text/Bidi;
    invoke-virtual {v1}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 1
    .parameter "dataStore"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->isOpend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->onUpdate(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    .line 100
    :cond_0
    return-void
.end method
