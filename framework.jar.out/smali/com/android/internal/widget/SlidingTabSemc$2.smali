.class Lcom/android/internal/widget/SlidingTabSemc$2;
.super Ljava/lang/Object;
.source "SlidingTabSemc.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SlidingTabSemc;->animateGhost(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SlidingTabSemc;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SlidingTabSemc;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTabSemc$2;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    .line 616
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$2;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    #getter for: Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z
    invoke-static {v0}, Lcom/android/internal/widget/SlidingTabSemc;->access$100(Lcom/android/internal/widget/SlidingTabSemc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$2;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    #calls: Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->access$200(Lcom/android/internal/widget/SlidingTabSemc;Z)V

    .line 622
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$2;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    #setter for: Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->access$302(Lcom/android/internal/widget/SlidingTabSemc;Z)Z

    .line 620
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$2;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    const/16 v1, 0x190

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTabSemc$2;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    #getter for: Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B
    invoke-static {v2}, Lcom/android/internal/widget/SlidingTabSemc;->access$400(Lcom/android/internal/widget/SlidingTabSemc;)B

    move-result v2

    #calls: Lcom/android/internal/widget/SlidingTabSemc;->animateGhostMore(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/SlidingTabSemc;->access$500(Lcom/android/internal/widget/SlidingTabSemc;II)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 613
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 612
    return-void
.end method
