.class Lcom/android/internal/widget/SlidingTabSemc$3;
.super Ljava/lang/Object;
.source "SlidingTabSemc.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SlidingTabSemc;->animateGhostMore(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SlidingTabSemc;

.field final synthetic val$amount:I

.field final synthetic val$sliderState:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SlidingTabSemc;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->val$amount:I

    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->val$sliderState:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x1

    .line 680
    iget v0, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->val$amount:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    #getter for: Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z
    invoke-static {v0}, Lcom/android/internal/widget/SlidingTabSemc;->access$600(Lcom/android/internal/widget/SlidingTabSemc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->val$amount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->val$sliderState:I

    #calls: Lcom/android/internal/widget/SlidingTabSemc;->animateGhostMore(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/SlidingTabSemc;->access$500(Lcom/android/internal/widget/SlidingTabSemc;II)V

    .line 687
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->access$702(Lcom/android/internal/widget/SlidingTabSemc;Z)Z

    .line 684
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    #getter for: Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SlidingTabSemc;->access$800(Lcom/android/internal/widget/SlidingTabSemc;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    #calls: Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/widget/SlidingTabSemc;->access$200(Lcom/android/internal/widget/SlidingTabSemc;Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 677
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 676
    return-void
.end method
