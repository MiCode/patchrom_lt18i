.class Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ViewFinderListener;
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
    name = "ViewFinderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)V
    .locals 0
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;Lcom/sonyericsson/android/camera/photostack/PhotoStackView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ViewFinderListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "motion"

    .prologue
    .line 758
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 766
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 760
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    #calls: Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->changeThumbnailToMenu(Landroid/view/MotionEvent;)Z
    invoke-static {v1, p2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->access$700(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 761
    .local v0, isChange:Z
    if-nez v0, :cond_0

    .line 762
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ViewFinderListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->hideMenu()V

    goto :goto_0

    .line 758
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
