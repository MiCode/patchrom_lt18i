.class Landroid/widget/PickerList$2;
.super Ljava/lang/Object;
.source "PickerList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PickerList;->endTouch(Landroid/view/MotionEvent;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PickerList;


# direct methods
.method constructor <init>(Landroid/widget/PickerList;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 607
    iget-object v3, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;
    invoke-static {v3}, Landroid/widget/PickerList;->access$300(Landroid/widget/PickerList;)Landroid/widget/Dynamics;

    move-result-object v3

    if-nez v3, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v3, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    iget-object v4, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    iget-object v5, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    #calls: Landroid/widget/PickerList;->getChildTop(Landroid/view/View;)I
    invoke-static {v4, v5}, Landroid/widget/PickerList;->access$500(Landroid/widget/PickerList;Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mListTopOffset:I
    invoke-static {v5}, Landroid/widget/PickerList;->access$600(Landroid/widget/PickerList;)I

    move-result v5

    sub-int/2addr v4, v5

    #setter for: Landroid/widget/PickerList;->mListTopStart:I
    invoke-static {v3, v4}, Landroid/widget/PickerList;->access$402(Landroid/widget/PickerList;I)I

    .line 615
    iget-object v3, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;
    invoke-static {v3}, Landroid/widget/PickerList;->access$300(Landroid/widget/PickerList;)Landroid/widget/Dynamics;

    move-result-object v3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/Dynamics;->update(J)V

    .line 616
    iget-object v3, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;
    invoke-static {v3}, Landroid/widget/PickerList;->access$300(Landroid/widget/PickerList;)Landroid/widget/Dynamics;

    move-result-object v3

    const/high16 v4, 0x3f80

    iget-object v5, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mScale:F
    invoke-static {v5}, Landroid/widget/PickerList;->access$700(Landroid/widget/PickerList;)F

    move-result v5

    mul-float/2addr v4, v5

    const v5, 0x3ecccccd

    iget-object v6, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mScale:F
    invoke-static {v6}, Landroid/widget/PickerList;->access$700(Landroid/widget/PickerList;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/Dynamics;->isAtRest(FF)Z

    move-result v0

    .line 618
    .local v0, isAtRest:Z
    iget-object v3, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    iget-object v4, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;
    invoke-static {v4}, Landroid/widget/PickerList;->access$300(Landroid/widget/PickerList;)Landroid/widget/Dynamics;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Dynamics;->getPosition()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mListTopStart:I
    invoke-static {v5}, Landroid/widget/PickerList;->access$400(Landroid/widget/PickerList;)I

    move-result v5

    sub-int/2addr v4, v5

    #calls: Landroid/widget/PickerList;->scrollList(I)V
    invoke-static {v3, v4}, Landroid/widget/PickerList;->access$800(Landroid/widget/PickerList;I)V

    .line 620
    if-nez v0, :cond_2

    .line 622
    iget-object v3, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    const-wide/16 v4, 0x10

    invoke-virtual {v3, p0, v4, v5}, Landroid/widget/PickerList;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 626
    iget-object v3, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    iget-object v4, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    invoke-virtual {v4}, Landroid/widget/PickerList;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    invoke-virtual {v5}, Landroid/widget/PickerList;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    #calls: Landroid/widget/PickerList;->getContainingChildIndex(II)I
    invoke-static {v3, v4, v5}, Landroid/widget/PickerList;->access$900(Landroid/widget/PickerList;II)I

    move-result v1

    .line 628
    .local v1, middleChildIndex:I
    if-eq v1, v7, :cond_0

    .line 629
    iget-object v3, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #calls: Landroid/widget/PickerList;->getAdapterPosition(I)I
    invoke-static {v3, v1}, Landroid/widget/PickerList;->access$1000(Landroid/widget/PickerList;I)I

    move-result v2

    .line 630
    .local v2, newCurrentPosition:I
    iget-object v3, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mCurrentPosition:I
    invoke-static {v3}, Landroid/widget/PickerList;->access$000(Landroid/widget/PickerList;)I

    move-result v3

    if-eq v2, v3, :cond_0

    if-eq v2, v7, :cond_0

    .line 632
    iget-object v3, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #setter for: Landroid/widget/PickerList;->mCurrentPosition:I
    invoke-static {v3, v2}, Landroid/widget/PickerList;->access$002(Landroid/widget/PickerList;I)I

    .line 633
    iget-object v3, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #calls: Landroid/widget/PickerList;->notifyPositionChanged()V
    invoke-static {v3}, Landroid/widget/PickerList;->access$1100(Landroid/widget/PickerList;)V

    goto/16 :goto_0

    .line 637
    .end local v1           #middleChildIndex:I
    .end local v2           #newCurrentPosition:I
    :cond_2
    iget-object v3, p0, Landroid/widget/PickerList$2;->this$0:Landroid/widget/PickerList;

    #calls: Landroid/widget/PickerList;->finalizeAndExitAutoscroll()V
    invoke-static {v3}, Landroid/widget/PickerList;->access$1200(Landroid/widget/PickerList;)V

    goto/16 :goto_0
.end method
