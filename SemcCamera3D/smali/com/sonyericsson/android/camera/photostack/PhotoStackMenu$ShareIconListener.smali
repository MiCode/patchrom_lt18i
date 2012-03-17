.class Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareIconListener;
.super Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;
.source "PhotoStackMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareIconListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/view/RotatableImageView;)V
    .locals 6
    .parameter
    .parameter "imageLand"
    .parameter "imagePort"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareIconListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    .line 367
    const v4, 0x7f020069

    const v5, 0x7f02006a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/view/RotatableImageView;II)V

    .line 369
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 375
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 382
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 377
    :pswitch_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareIconListener;->mIsContains:Z

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareIconListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->performShare()V

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
