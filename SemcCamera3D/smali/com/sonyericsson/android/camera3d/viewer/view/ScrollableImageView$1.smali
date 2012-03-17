.class Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$1;
.super Ljava/lang/Object;
.source "ScrollableImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->processAutoScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->access$000(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->access$000(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;->onScrollEnd(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;)V

    .line 214
    :cond_0
    return-void
.end method
