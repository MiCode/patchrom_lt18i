.class Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;
.super Landroid/view/animation/Animation;
.source "SlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingPanelAnimation"
.end annotation


# instance fields
.field private mDeltaY:I

.field private mInitBottom:I

.field private mMode:I

.field private mPanel:Lcom/miui/internal/policy/impl/SlidingPanel;

.field final synthetic this$0:Lcom/miui/internal/policy/impl/SlidingPanel;


# direct methods
.method public constructor <init>(Lcom/miui/internal/policy/impl/SlidingPanel;Lcom/miui/internal/policy/impl/SlidingPanel;I)V
    .locals 1
    .parameter
    .parameter "panel"
    .parameter "mode"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mMode:I

    .line 156
    iput-object p2, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mPanel:Lcom/miui/internal/policy/impl/SlidingPanel;

    .line 157
    iput p3, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mMode:I

    .line 158
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mPanel:Lcom/miui/internal/policy/impl/SlidingPanel;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mInitBottom:I

    iget v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mDeltaY:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/policy/impl/SlidingPanel;->scrollTo(II)V

    .line 177
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 163
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mScrollY:I
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$000(Lcom/miui/internal/policy/impl/SlidingPanel;)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mInitBottom:I

    .line 164
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mMode:I

    if-nez v0, :cond_1

    .line 165
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mInitBottom:I

    neg-int v0, v0

    iput v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mDeltaY:I

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayHeight:I
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$100(Lcom/miui/internal/policy/impl/SlidingPanel;)I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mInitBottom:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$SlidingPanelAnimation;->mDeltaY:I

    goto :goto_0
.end method
