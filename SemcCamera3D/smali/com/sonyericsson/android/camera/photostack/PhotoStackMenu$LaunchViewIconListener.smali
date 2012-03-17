.class Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$LaunchViewIconListener;
.super Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;
.source "PhotoStackMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchViewIconListener"
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
    .line 388
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$LaunchViewIconListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    .line 389
    const v4, 0x7f020065

    const v5, 0x7f020066

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/view/RotatableImageView;II)V

    .line 391
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const v1, 0x7f020065

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 406
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 399
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$LaunchViewIconListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->access$000(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$LaunchViewIconListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->access$100(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;)Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->setImageResource(I)V

    .line 401
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$LaunchViewIconListener;->mIsContains:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$LaunchViewIconListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->performView()V

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
