.class Lmiui/widget/GuidePopupView$1;
.super Ljava/lang/Object;
.source "GuidePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/GuidePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/GuidePopupView;


# direct methods
.method constructor <init>(Lmiui/widget/GuidePopupView;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    .line 44
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    invoke-virtual {v11}, Lmiui/widget/GuidePopupView;->getWidth()I

    move-result v6

    .line 45
    .local v6, displayWidth:I
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$000(Lmiui/widget/GuidePopupView;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 46
    .local v5, contentTextWidth:I
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$000(Lmiui/widget/GuidePopupView;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 48
    .local v4, contentTextHeight:I
    const/4 v11, 0x2

    new-array v7, v11, [I

    .line 49
    .local v7, drawingLocation:[I
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mAnchor:Landroid/view/View;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$100(Lmiui/widget/GuidePopupView;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 50
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mAnchor:Landroid/view/View;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$100(Lmiui/widget/GuidePopupView;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 51
    .local v1, anchorWidth:I
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mAnchor:Landroid/view/View;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$100(Lmiui/widget/GuidePopupView;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 53
    .local v0, anchorHeight:I
    const/4 v11, 0x0

    aget v11, v7, v11

    div-int/lit8 v12, v1, 0x2

    add-int v9, v11, v12

    .line 54
    .local v9, spaceLeft:I
    sub-int v10, v6, v9

    .line 56
    .local v10, spaceRight:I
    div-int/lit8 v2, v5, 0x2

    .line 57
    .local v2, arrowLeftWidth:I
    sub-int v3, v5, v2

    .line 59
    .local v3, arrowRightWidth:I
    const/4 v8, 0x0

    .line 60
    .local v8, paddingTop:I
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mArrowMode:I
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$200(Lmiui/widget/GuidePopupView;)I

    move-result v11

    if-ne v11, v13, :cond_2

    .line 61
    aget v11, v7, v13

    sub-int v8, v11, v4

    .line 62
    if-gez v8, :cond_0

    .line 63
    const/4 v8, 0x0

    .line 68
    :cond_0
    :goto_0
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    invoke-virtual {v11}, Lmiui/widget/GuidePopupView;->getTop()I

    move-result v11

    add-int/2addr v8, v11

    .line 70
    if-lt v9, v2, :cond_3

    if-lt v10, v3, :cond_3

    .line 72
    sub-int/2addr v9, v2

    .line 73
    sub-int/2addr v10, v3

    .line 88
    :cond_1
    :goto_1
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mOffsetY:I
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$300(Lmiui/widget/GuidePopupView;)I

    move-result v11

    add-int/2addr v8, v11

    .line 89
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mOffsetX:I
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$400(Lmiui/widget/GuidePopupView;)I

    move-result v11

    add-int/2addr v9, v11

    .line 90
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mOffsetX:I
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$400(Lmiui/widget/GuidePopupView;)I

    move-result v11

    sub-int/2addr v10, v11

    .line 92
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$000(Lmiui/widget/GuidePopupView;)Landroid/widget/TextView;

    move-result-object v11

    add-int v12, v9, v5

    add-int v13, v8, v4

    invoke-virtual {v11, v9, v8, v12, v13}, Landroid/widget/TextView;->layout(IIII)V

    .line 98
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$500(Lmiui/widget/GuidePopupView;)Landroid/widget/ImageView;

    move-result-object v11

    add-int v12, v9, v2

    add-int v13, v8, v4

    invoke-virtual {v11, v9, v8, v12, v13}, Landroid/widget/ImageView;->layout(IIII)V

    .line 104
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$600(Lmiui/widget/GuidePopupView;)Landroid/widget/ImageView;

    move-result-object v11

    sub-int v12, v6, v10

    sub-int/2addr v12, v3

    sub-int v13, v6, v10

    add-int v14, v8, v4

    invoke-virtual {v11, v12, v8, v13, v14}, Landroid/widget/ImageView;->layout(IIII)V

    .line 109
    return-void

    .line 65
    :cond_2
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mArrowMode:I
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$200(Lmiui/widget/GuidePopupView;)I

    move-result v11

    if-nez v11, :cond_0

    .line 66
    aget v11, v7, v13

    add-int v8, v11, v0

    goto :goto_0

    .line 74
    :cond_3
    if-ge v10, v3, :cond_4

    .line 76
    move v3, v10

    .line 77
    const/4 v10, 0x0

    .line 78
    sub-int v9, v6, v5

    .line 79
    sub-int v2, v5, v3

    goto :goto_1

    .line 80
    :cond_4
    if-ge v9, v2, :cond_1

    .line 82
    move v2, v9

    .line 83
    const/4 v9, 0x0

    .line 84
    sub-int v10, v6, v5

    .line 85
    sub-int v3, v5, v2

    goto :goto_1
.end method
