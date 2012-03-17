.class Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackListener;
.super Ljava/lang/Object;
.source "PhotoStackView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;Lcom/sonyericsson/android/camera/photostack/PhotoStackView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "motion"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mGestureDetector:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->access$600(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
