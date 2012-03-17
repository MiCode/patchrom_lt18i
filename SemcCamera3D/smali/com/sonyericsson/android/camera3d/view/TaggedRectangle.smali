.class public Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
.super Landroid/widget/RelativeLayout;
.source "TaggedRectangle.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/TaggedRectangle$TaggedRectangleTarget;
    }
.end annotation


# static fields
.field public static final FACEDETECT_CAPTURE:I = 0x1

.field public static final FACERECOGNITION_REVIEW:I = 0x2

.field public static final SMILE_DETECTION_CAPTURE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TaggedRectangle"


# instance fields
.field private mFaceId:I

.field private mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

.field private mRectangleOnClickListener:Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method


# virtual methods
.method public final changeRectangleColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->changeRectangleColor(I)V

    .line 269
    return-void
.end method

.method public final changeRectangleIcon(I)V
    .locals 1
    .parameter "pictId"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->changeChildrenBackgroundResource(I)V

    .line 259
    return-void
.end method

.method public getFaceId()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mFaceId:I

    return v0
.end method

.method public getFaceRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 343
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 344
    .local v0, tag:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 345
    return-object v0
.end method

.method public getRectangleHeight()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRectangleLeft()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->getLeft()I

    move-result v0

    return v0
.end method

.method public getRectangleTop()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->getTop()I

    move-result v0

    return v0
.end method

.method public getRectangleWidth()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->getWidth()I

    move-result v0

    return v0
.end method

.method public moveRectTopLeft(II)V
    .locals 2
    .parameter "dX"
    .parameter "dY"

    .prologue
    .line 249
    neg-int v0, p1

    neg-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->scrollBy(II)V

    .line 250
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangleOnClickListener:Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->setRectangleOnClickListener(Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;)V

    .line 286
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 287
    return-void
.end method

.method public onRectClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangleOnClickListener:Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangleOnClickListener:Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;->onRectClick(Landroid/view/View;)V

    .line 299
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 110
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const v2, 0x7f0d0006

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/view/Rectangle;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    .local v1, size:I
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    invoke-virtual {v2, v1, v1}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->setChildSize(II)V

    .line 117
    return-void
.end method

.method public prepare(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->prepare()V

    .line 130
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_0
    :pswitch_0
    return-void

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->setClickable(Z)V

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->setRectangleOnClickListener(Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public prepare(ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "name"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->prepare()V

    .line 157
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->prepare(I)V

    .line 158
    return-void
.end method

.method public prepare(ILjava/lang/String;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "type"
    .parameter "name"
    .parameter "rect"

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->prepare(ILjava/lang/String;)V

    .line 174
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->setRawPosition(Landroid/graphics/Rect;)V

    .line 175
    return-void
.end method

.method public setFaceId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 359
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mFaceId:I

    .line 360
    return-void
.end method

.method public setRawPosition(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "rect"

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->setRectSize(II)V

    .line 185
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->setRectTopLeft(II)V

    .line 186
    return-void
.end method

.method public setRectSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 199
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 200
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 201
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 202
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangle:Lcom/sonyericsson/android/camera3d/view/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->requestLayout()V

    .line 205
    :cond_0
    return-void
.end method

.method public setRectTopLeft(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, offset:I
    neg-int v1, p1

    add-int/2addr v1, v0

    neg-int v2, p2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->scrollTo(II)V

    .line 238
    return-void
.end method

.method public setRectangleOnClickListener(Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->mRectangleOnClickListener:Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;

    .line 279
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x1

    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 219
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 220
    .local v1, rules:[I
    const/16 v2, 0xe

    aput v3, v1, v2

    .line 221
    const/16 v2, 0xf

    aput v3, v1, v2

    .line 222
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 223
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 224
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    return-void
.end method
