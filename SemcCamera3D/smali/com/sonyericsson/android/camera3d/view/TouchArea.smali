.class public Lcom/sonyericsson/android/camera3d/view/TouchArea;
.super Landroid/widget/RelativeLayout;
.source "TouchArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/TouchArea$1;,
        Lcom/sonyericsson/android/camera3d/view/TouchArea$BackgroundListener;,
        Lcom/sonyericsson/android/camera3d/view/TouchArea$TouchAreaListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchArea"


# instance fields
.field private mController:Landroid/view/View$OnTouchListener;

.field private mCurrentTouchCaptureSetting:Ljava/lang/String;

.field private mTouchArea:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/view/TouchArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/view/TouchArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/view/TouchArea;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea;->mCurrentTouchCaptureSetting:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/view/TouchArea;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea;->mTouchArea:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/view/TouchArea;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea;->mController:Landroid/view/View$OnTouchListener;

    return-object v0
.end method


# virtual methods
.method public doTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, res:Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea;->mController:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea;->mController:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 101
    :cond_0
    return v0
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 69
    const v0, 0x7f0d002e

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/TouchArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea;->mTouchArea:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea;->mTouchArea:Landroid/widget/ImageView;

    new-instance v1, Lcom/sonyericsson/android/camera3d/view/TouchArea$TouchAreaListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera3d/view/TouchArea$TouchAreaListener;-><init>(Lcom/sonyericsson/android/camera3d/view/TouchArea;Lcom/sonyericsson/android/camera3d/view/TouchArea$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/TouchArea$BackgroundListener;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera3d/view/TouchArea$BackgroundListener;-><init>(Lcom/sonyericsson/android/camera3d/view/TouchArea;Lcom/sonyericsson/android/camera3d/view/TouchArea$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/TouchArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    return-void
.end method

.method public setController(Lcom/sonyericsson/android/camera3d/BaseController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea;->mController:Landroid/view/View$OnTouchListener;

    .line 81
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 164
    return-void
.end method

.method public setTouchCaptureSetting(Ljava/lang/String;)V
    .locals 0
    .parameter "touchCaptureSetting"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/TouchArea;->mCurrentTouchCaptureSetting:Ljava/lang/String;

    .line 168
    return-void
.end method
