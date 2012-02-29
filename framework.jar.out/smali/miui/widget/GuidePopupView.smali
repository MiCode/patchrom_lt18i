.class public Lmiui/widget/GuidePopupView;
.super Landroid/widget/FrameLayout;
.source "GuidePopupView.java"


# static fields
.field public static final ARROW_BOTTOM_MODE:I = 0x1

.field public static final ARROW_TOP_MODE:I


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mArrowLeft:Landroid/widget/ImageView;

.field private mArrowMode:I

.field private mArrowRight:Landroid/widget/ImageView;

.field private mContentText:Landroid/widget/TextView;

.field private mLayoutRunnable:Ljava/lang/Runnable;

.field private mOffsetX:I

.field private mOffsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lmiui/widget/GuidePopupView$1;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupView$1;-><init>(Lmiui/widget/GuidePopupView;)V

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lmiui/widget/GuidePopupView$1;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupView$1;-><init>(Lmiui/widget/GuidePopupView;)V

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/GuidePopupView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/GuidePopupView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/GuidePopupView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lmiui/widget/GuidePopupView;->mArrowMode:I

    return v0
.end method

.method static synthetic access$300(Lmiui/widget/GuidePopupView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lmiui/widget/GuidePopupView;->mOffsetY:I

    return v0
.end method

.method static synthetic access$400(Lmiui/widget/GuidePopupView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lmiui/widget/GuidePopupView;->mOffsetX:I

    return v0
.end method

.method static synthetic access$500(Lmiui/widget/GuidePopupView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/GuidePopupView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getArrowMode()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lmiui/widget/GuidePopupView;->mArrowMode:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 36
    const v0, 0x60d0015

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;

    .line 37
    const v0, 0x60d0016

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;

    .line 38
    const v0, 0x60d0017

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    .line 39
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 114
    invoke-virtual {p0, p2, p3, p4, p5}, Lmiui/widget/GuidePopupView;->setFrame(IIII)Z

    .line 115
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupView;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 150
    iput-object p1, p0, Lmiui/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 151
    return-void
.end method

.method public setArrowMode(I)V
    .locals 2
    .parameter "arrowMode"

    .prologue
    .line 130
    iput p1, p0, Lmiui/widget/GuidePopupView;->mArrowMode:I

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;

    const v1, 0x602023a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;

    const v1, 0x602023b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    const v1, 0x602023c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;

    const v1, 0x602023d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;

    const v1, 0x602023e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    const v1, 0x602023f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setGuideText(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 123
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 119
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 154
    iput p1, p0, Lmiui/widget/GuidePopupView;->mOffsetX:I

    .line 155
    iput p2, p0, Lmiui/widget/GuidePopupView;->mOffsetY:I

    .line 156
    return-void
.end method
