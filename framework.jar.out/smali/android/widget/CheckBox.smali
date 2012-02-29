.class public Landroid/widget/CheckBox;
.super Landroid/widget/CompoundButton;
.source "CheckBox.java"


# instance fields
.field private mLtrBackground:Landroid/graphics/drawable/Drawable;

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    const v0, 0x101006c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    if-eqz p2, :cond_0

    .line 78
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Landroid/widget/CheckBox;->mStyle:I

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CheckBox;->mLtrBackground:Landroid/graphics/drawable/Drawable;

    .line 81
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 85
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 86
    invoke-virtual {p0}, Landroid/widget/CheckBox;->shouldMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget v0, p0, Landroid/widget/CheckBox;->mStyle:I

    packed-switch v0, :pswitch_data_0

    .line 94
    const v0, 0x10800bd

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 100
    :goto_0
    return-void

    .line 89
    :pswitch_0
    const v0, 0x1080143

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/widget/CheckBox;->mLtrBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1010082
        :pswitch_0
    .end packed-switch
.end method
