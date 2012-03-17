.class public Lcom/sonyericsson/android/camera3d/view/StoreProgress;
.super Ljava/lang/Object;
.source "StoreProgress.java"


# static fields
.field private static final MAX_NUMBER_OF_PICTURES:I = 0x11

.field public static final TAG:Ljava/lang/String; = "StoreProgress"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMultiAngleProgress:Landroid/widget/RelativeLayout;

.field private mProgressDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mProgressDialog:Landroid/app/Dialog;

    .line 98
    :cond_0
    return-void
.end method

.method private getMultiAngleProgressView(I)Landroid/widget/RelativeLayout;
    .locals 4
    .parameter "msgId"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mMultiAngleProgress:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 70
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030019

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mMultiAngleProgress:Landroid/widget/RelativeLayout;

    .line 74
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mMultiAngleProgress:Landroid/widget/RelativeLayout;

    const v3, 0x7f0d007c

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 75
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->update(II)V

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mMultiAngleProgress:Landroid/widget/RelativeLayout;

    return-object v2
.end method

.method private showProgressDialog(IIZLandroid/view/View;)V
    .locals 1
    .parameter "msgId"
    .parameter "titleId"
    .parameter "isVisibleIcon"
    .parameter "optionalView"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->dismiss()V

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showStoreProgressDialog(IIZLandroid/view/View;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mProgressDialog:Landroid/app/Dialog;

    .line 87
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->dismiss()V

    .line 91
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->dismiss()V

    .line 36
    return-void
.end method

.method public show(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const v0, 0x7f0c00ab

    .line 47
    .local v0, msgId:I
    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->showProgressDialog(IIZLandroid/view/View;)V

    .line 48
    return-void

    .line 45
    .end local v0           #msgId:I
    :cond_0
    const v0, 0x7f0c00ac

    .restart local v0       #msgId:I
    goto :goto_0
.end method

.method public showMultiAngle(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    const v0, 0x7f0c00ad

    .line 59
    .local v0, msgId:I
    :goto_0
    const v1, 0x7f0c00de

    .line 62
    .local v1, titleId:I
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->getMultiAngleProgressView(I)Landroid/widget/RelativeLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mMultiAngleProgress:Landroid/widget/RelativeLayout;

    .line 64
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mMultiAngleProgress:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->showProgressDialog(IIZLandroid/view/View;)V

    .line 65
    return-void

    .line 57
    .end local v0           #msgId:I
    .end local v1           #titleId:I
    :cond_0
    const v0, 0x7f0c00ae

    .restart local v0       #msgId:I
    goto :goto_0
.end method

.method public update(II)V
    .locals 3
    .parameter "current"
    .parameter "total"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mMultiAngleProgress:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->mMultiAngleProgress:Landroid/widget/RelativeLayout;

    const v2, 0x7f0d0014

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 105
    .local v0, progress:Landroid/widget/ProgressBar;
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 108
    .end local v0           #progress:Landroid/widget/ProgressBar;
    :cond_0
    return-void
.end method
