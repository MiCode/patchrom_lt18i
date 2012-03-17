.class public Lcom/sonyericsson/android/camera3d/view/Rectangle;
.super Landroid/widget/RelativeLayout;
.source "Rectangle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Rectangles"


# instance fields
.field private mRectangleOnClickListener:Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method


# virtual methods
.method public changeChildrenBackgroundResource(I)V
    .locals 3
    .parameter "pictId"

    .prologue
    .line 131
    const v1, 0x7f0d0007

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 133
    if-lez p1, :cond_1

    .line 134
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final changeRectangleColor(I)V
    .locals 5
    .parameter "color"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->getChildCount()I

    move-result v1

    .line 149
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 150
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, consumed:Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/Rectangle;->mRectangleOnClickListener:Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;

    if-eqz v1, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 114
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 106
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/Rectangle;->mRectangleOnClickListener:Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/Rectangle;->mRectangleOnClickListener:Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;

    invoke-interface {v1, p0}, Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;->onRectClick(Landroid/view/View;)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setChildSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 158
    const v2, 0x7f0d0007

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/Rectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 162
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 163
    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 167
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setRectangleOnClickListener(Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/Rectangle;->mRectangleOnClickListener:Lcom/sonyericsson/android/camera3d/view/Rectangle$RectangleOnClickListener;

    .line 123
    return-void
.end method
