.class Lmiui/widget/ScrollableScreenView$ScrollAnimation;
.super Landroid/view/animation/Animation;
.source "ScrollableScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScrollableScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimation"
.end annotation


# instance fields
.field private mFromY:I

.field private mToY:I

.field final synthetic this$0:Lmiui/widget/ScrollableScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScrollableScreenView;II)V
    .locals 2
    .parameter
    .parameter "fromY"
    .parameter "toY"

    .prologue
    const/4 v0, 0x0

    .line 109
    iput-object p1, p0, Lmiui/widget/ScrollableScreenView$ScrollAnimation;->this$0:Lmiui/widget/ScrollableScreenView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 105
    iput v0, p0, Lmiui/widget/ScrollableScreenView$ScrollAnimation;->mFromY:I

    .line 107
    iput v0, p0, Lmiui/widget/ScrollableScreenView$ScrollAnimation;->mToY:I

    .line 110
    iput p2, p0, Lmiui/widget/ScrollableScreenView$ScrollAnimation;->mFromY:I

    .line 111
    iput p3, p0, Lmiui/widget/ScrollableScreenView$ScrollAnimation;->mToY:I

    .line 112
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScrollableScreenView$ScrollAnimation;->setDuration(J)V

    .line 113
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 117
    iget v1, p0, Lmiui/widget/ScrollableScreenView$ScrollAnimation;->mToY:I

    iget v2, p0, Lmiui/widget/ScrollableScreenView$ScrollAnimation;->mFromY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 118
    .local v0, offset:I
    iget-object v1, p0, Lmiui/widget/ScrollableScreenView$ScrollAnimation;->this$0:Lmiui/widget/ScrollableScreenView;

    #getter for: Lmiui/widget/ScrollableScreenView;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lmiui/widget/ScrollableScreenView;->access$000(Lmiui/widget/ScrollableScreenView;)Landroid/widget/ScrollView;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/ScrollableScreenView$ScrollAnimation;->this$0:Lmiui/widget/ScrollableScreenView;

    #getter for: Lmiui/widget/ScrollableScreenView;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lmiui/widget/ScrollableScreenView;->access$000(Lmiui/widget/ScrollableScreenView;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v2

    iget v3, p0, Lmiui/widget/ScrollableScreenView$ScrollAnimation;->mFromY:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 119
    return-void
.end method
