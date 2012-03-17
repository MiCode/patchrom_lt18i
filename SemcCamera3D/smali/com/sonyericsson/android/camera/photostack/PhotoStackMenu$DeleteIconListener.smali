.class Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteIconListener;
.super Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;
.source "PhotoStackMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteIconListener"
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
    .line 345
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteIconListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    .line 346
    const v4, 0x7f020062

    const v5, 0x7f020063

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/view/RotatableImageView;II)V

    .line 348
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 354
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 361
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 356
    :pswitch_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteIconListener;->mIsContains:Z

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteIconListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->showConfirmationDelete()V

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
