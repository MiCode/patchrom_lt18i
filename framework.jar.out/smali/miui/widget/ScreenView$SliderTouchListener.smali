.class Lmiui/widget/ScreenView$SliderTouchListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method private constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 1376
    iput-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1376
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$SliderTouchListener;-><init>(Lmiui/widget/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 1379
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1380
    .local v2, sliderWidth:I
    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-int v6, v2, v7

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1381
    .local v3, x:F
    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v4}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    .line 1382
    .local v1, screenCount:I
    int-to-float v4, v1

    mul-float/2addr v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1384
    .local v0, pos:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1402
    :goto_0
    return v7

    .line 1386
    :pswitch_0
    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    iget-object v4, v4, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    iget-object v4, v4, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1387
    :cond_0
    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    const/4 v5, 0x3

    invoke-virtual {v4, p2, v5}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1390
    :pswitch_1
    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v4, v0}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 1391
    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    iget-object v5, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    iget v5, v5, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    int-to-float v6, v2

    div-float/2addr v5, v6

    iget-object v6, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    iget v6, v6, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lmiui/widget/ScreenView;->scrollTo(II)V

    goto :goto_0

    .line 1397
    :pswitch_2
    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v4, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 1398
    iget-object v4, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    iget-object v5, p0, Lmiui/widget/ScreenView$SliderTouchListener;->this$0:Lmiui/widget/ScreenView;

    iget v5, v5, Lmiui/widget/ScreenView;->mCurrentScreen:I

    #calls: Lmiui/widget/ScreenView;->updateSeekPoints(II)V
    invoke-static {v4, v5, v0}, Lmiui/widget/ScreenView;->access$400(Lmiui/widget/ScreenView;II)V

    goto :goto_0

    .line 1384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
