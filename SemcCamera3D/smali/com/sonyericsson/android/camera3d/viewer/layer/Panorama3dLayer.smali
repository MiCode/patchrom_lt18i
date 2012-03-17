.class public Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;
.super Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
.source "Panorama3dLayer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;


# static fields
.field private static final IMAGE_FOR_LEFTEYE_INDEX:I = 0x0

.field private static final IMAGE_FOR_RIGHTEYE_INDEX:I = 0x1

.field private static final MSG_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Panorama3dLayer"


# instance fields
.field private final mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

.field private mComfirmListener:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;

.field private final mCorruptedIcon:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

.field private mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

.field private mHdmiBinded:Z

.field private mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

.field private mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

.field private final mImageUpdateHandler:Landroid/os/Handler;

.field private mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

.field private final mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

.field private final mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

.field private final mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

.field private mReviewImage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

.field private mShareDialogCloseListener:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;

.field private mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

.field private final mSwitcher:Landroid/widget/ViewSwitcher;

.field private final mSwitcherFrame:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/Mediator;Landroid/widget/RelativeLayout;Z)V
    .locals 2
    .parameter "mediator"
    .parameter "view"
    .parameter "isHdmiBinded"

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;-><init>(Lcom/sonyericsson/android/camera3d/viewer/Mediator;Landroid/widget/RelativeLayout;)V

    .line 456
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageUpdateHandler:Landroid/os/Handler;

    .line 484
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mComfirmListener:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;

    .line 519
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$3;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mShareDialogCloseListener:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;

    .line 154
    const v0, 0x7f0d001e

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    .line 155
    const v0, 0x7f0d0025

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcherFrame:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    .line 156
    const v0, 0x7f0d0026

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 157
    const v0, 0x7f0d0013

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    .line 158
    const v0, 0x7f0d0024

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mCorruptedIcon:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    .line 159
    const v0, 0x7f0d0023

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    .line 160
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    .line 161
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    .line 162
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    .line 163
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mHdmiBinded:Z

    .line 164
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->checkScrollable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Landroid/widget/ViewSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method private checkScrollable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    .line 400
    .local v1, image:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    if-nez v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v2

    .line 403
    :cond_1
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->getOriginalWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->getOriginalHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 404
    .local v0, aspect:F
    const v3, 0x3ff05b06

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 405
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private clearPanoramaImage()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->forLeftEye()Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->release(Landroid/widget/ImageView;)V

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->forRightEye()Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->release(Landroid/widget/ImageView;)V

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->clear()V

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->clear()V

    .line 314
    return-void
.end method

.method private clearSwitchImages()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 322
    return-void
.end method

.method private setCurrentSwitchImage(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 328
    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getReviewImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private setImageHolder(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)V
    .locals 1
    .parameter "first"
    .parameter "second"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->removeListener(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;)V

    .line 381
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->addListener(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;)V

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->removeListener(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;)V

    .line 389
    :cond_2
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->addListener(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;)V

    .line 393
    :cond_3
    return-void
.end method

.method private setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z
    .locals 4
    .parameter "content"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 354
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mReviewImage:Ljava/lang/ref/WeakReference;

    .line 357
    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getInfo()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    .line 359
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isPanorana3d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isBroken()Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getReviewImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mReviewImage:Ljava/lang/ref/WeakReference;

    .line 361
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getImageCache()Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getImageCache()Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setImageHolder(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)V

    .line 370
    :goto_0
    return v0

    .line 367
    :cond_0
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    .line 369
    :cond_1
    invoke-direct {p0, v3, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setImageHolder(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)V

    move v0, v1

    .line 370
    goto :goto_0
.end method

.method private setNextSwitchImage(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 340
    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getReviewImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 342
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 346
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private updateImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "image"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->release(Landroid/widget/ImageView;)V

    .line 444
    if-eqz p2, :cond_0

    .line 445
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 447
    :cond_0
    return-void
.end method

.method private updateImage(Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)Z
    .locals 5
    .parameter "view"
    .parameter "image"

    .prologue
    const/4 v1, 0x1

    .line 416
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->getHeight()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->reset(Landroid/widget/ImageView;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->restore(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 435
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return v1

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->release(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 435
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method closeDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 593
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->close()V

    .line 595
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->close()V

    .line 599
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    .line 601
    :cond_1
    return-void
.end method

.method protected onBackground()V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->closeDialogs()V

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z

    .line 239
    return-void
.end method

.method protected onChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 1
    .parameter "sender"
    .parameter "mode"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 279
    return-void
.end method

.method protected onChangeStorageState(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Z)V
    .locals 2
    .parameter "sender"
    .parameter "enable"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->close(Lcom/sonyericsson/android/camera3d/viewer/AppLayer;Z)V

    .line 287
    return-void
.end method

.method protected onClose()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->setVisibility(I)V

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->closeDialogs()V

    .line 198
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->clearSwitchImages()V

    .line 199
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->clearPanoramaImage()V

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->reset()V

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->commit(Z)V

    .line 204
    return-void
.end method

.method public onForeground(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 8
    .parameter "dataStore"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getCurrentContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v0

    .line 245
    .local v0, content:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->reset()V

    .line 249
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->commit(Z)V

    .line 250
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z

    .line 251
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->setVisibility(I)V

    .line 254
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isScrollable()Z

    move-result v6

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isBroken()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isPanorana3d()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    invoke-virtual {v5, v1, v4, v6, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onUpdateContent(ZZZZ)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 1
    .parameter "dataStore"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->shutdown()V

    .line 300
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->closeDialogs()V

    .line 301
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->clearSwitchImages()V

    .line 302
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->clearPanoramaImage()V

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z

    .line 304
    return-void
.end method

.method protected onResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 2
    .parameter "dataStore"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->reset()V

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->commit(Z)V

    .line 293
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mHdmiBinded:Z

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->create(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;Z)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->startup()V

    .line 295
    return-void
.end method

.method protected onShow(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 8
    .parameter "dataStore"
    .parameter "outputMode"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 170
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getCurrentContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v0

    .line 171
    .local v0, content:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->reset()V

    .line 177
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->commit(Z)V

    .line 178
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mHdmiBinded:Z

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->create(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;Z)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->startup()V

    .line 180
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setCurrentSwitchImage(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)V

    .line 181
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z

    .line 182
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isScrollable()Z

    move-result v6

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isBroken()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isPanorana3d()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    invoke-virtual {v5, v1, v4, v6, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onUpdateContent(ZZZZ)V

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 182
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onUpdate(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 8
    .parameter "dataStore"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getPreviousContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v7

    .line 210
    .local v7, prevContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getCurrentContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v6

    .line 211
    .local v6, content:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->reset()V

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->commit(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->closeDialogs()V

    .line 214
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->clearSwitchImages()V

    .line 215
    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setNextSwitchImage(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)V

    .line 216
    invoke-direct {p0, v7}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setCurrentSwitchImage(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)V

    .line 218
    if-nez v6, :cond_0

    .line 230
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->shouldMirror()Z

    move-result v1

    invoke-static {v7, v6, v1}, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->detectSlideDirection(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;Z)Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isScrollable()Z

    move-result v4

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isBroken()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;ZZZZ)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method public onUpdate(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    return-void
.end method

.method performDelete()V
    .locals 4

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->closeDialogs()V

    .line 552
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mComfirmListener:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    .line 556
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->show()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    .line 561
    :cond_0
    return-void
.end method

.method performNext()V
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->shouldMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->previous()V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->next()V

    goto :goto_0
.end method

.method performPrevious()V
    .locals 1

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->shouldMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->next()V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->previous()V

    goto :goto_0
.end method

.method performShare()V
    .locals 4

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->closeDialogs()V

    .line 534
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mShareDialogCloseListener:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->show()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    .line 543
    :cond_0
    return-void
.end method

.method setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 608
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mCorruptedIcon:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 610
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcherFrame:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 611
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 612
    return-void
.end method

.method showCorruptedImage()V
    .locals 3

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->clearPanoramaImage()V

    .line 658
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mCorruptedIcon:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const v2, 0x3f4ccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 662
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 663
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mCorruptedIcon:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->setVisibility(I)V

    .line 664
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mCorruptedIcon:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 666
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method showPanoramaImage()V
    .locals 7

    .prologue
    .line 618
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    .line 619
    .local v0, left:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    .line 620
    .local v1, right:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mCorruptedIcon:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->clearAnimation()V

    .line 621
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mCorruptedIcon:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->setVisibility(I)V

    .line 623
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->forLeftEye()Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    move-result-object v2

    .line 624
    .local v2, viewLeft:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->forRightEye()Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    move-result-object v3

    .line 625
    .local v3, viewRight:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 626
    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->updateImage(Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)Z

    .line 628
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 629
    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->updateImage(Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)Z

    .line 631
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 634
    return-void
.end method

.method showReviewImage()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 640
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mCorruptedIcon:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->clearAnimation()V

    .line 641
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mCorruptedIcon:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mReviewImage:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->forLeftEye()Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mReviewImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->updateImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 644
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->forRightEye()Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mReviewImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->updateImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 645
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mReviewImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mReviewImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 651
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->forLeftEye()Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->updateImage(Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)Z

    .line 648
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->forRightEye()Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->updateImage(Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)Z

    .line 649
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method startSlideAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter "toRight"
    .parameter "listener"

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/AnimationUtils;->makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 673
    .local v0, inAnimation:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/AnimationUtils;->makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 674
    .local v1, outAnimation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 675
    const-wide/16 v2, -0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 676
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->clearAnimation()V

    .line 677
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 678
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 679
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 680
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$4;

    invoke-direct {v3, p0, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$4;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 696
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 697
    return-void
.end method
