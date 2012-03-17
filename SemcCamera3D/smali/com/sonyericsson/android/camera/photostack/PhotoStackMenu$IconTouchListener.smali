.class Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;
.super Ljava/lang/Object;
.source "PhotoStackMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconTouchListener"
.end annotation


# instance fields
.field private mIconId:I

.field private mIconLand:Landroid/widget/ImageView;

.field private mIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

.field protected mIsContains:Z

.field private mPressedIconId:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/view/RotatableImageView;II)V
    .locals 1
    .parameter
    .parameter "iconLand"
    .parameter "iconPort"
    .parameter "iconId"
    .parameter "pressedIconId"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIsContains:Z

    .line 304
    iput-object p2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconLand:Landroid/widget/ImageView;

    .line 305
    iput-object p3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    .line 306
    iput p4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconId:I

    .line 307
    iput p5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mPressedIconId:I

    .line 308
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, contains:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 316
    const/4 v0, 0x1

    .line 319
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 340
    :cond_1
    :goto_0
    return v5

    .line 321
    :pswitch_0
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIsContains:Z

    .line 322
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconLand:Landroid/widget/ImageView;

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mPressedIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mPressedIconId:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->setImageResource(I)V

    goto :goto_0

    .line 326
    :pswitch_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIsContains:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconLand:Landroid/widget/ImageView;

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconId:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->setImageResource(I)V

    .line 329
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIsContains:Z

    goto :goto_0

    .line 333
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconLand:Landroid/widget/ImageView;

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIconId:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->setImageResource(I)V

    goto :goto_0

    .line 337
    :pswitch_3
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;->mIsContains:Z

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
