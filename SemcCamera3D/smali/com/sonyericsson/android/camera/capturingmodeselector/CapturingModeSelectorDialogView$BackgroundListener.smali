.class Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$BackgroundListener;
.super Ljava/lang/Object;
.source "CapturingModeSelectorDialogView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$BackgroundListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "motion"

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method
