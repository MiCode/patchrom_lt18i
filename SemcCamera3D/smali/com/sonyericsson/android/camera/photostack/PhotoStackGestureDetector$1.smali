.class Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;
.super Ljava/lang/Object;
.source "PhotoStackGestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    .line 179
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->onImageDown(Landroid/view/MotionEvent;)I

    move-result v1

    .line 180
    .local v1, rtn:I
    const/4 v0, 0x0

    .line 181
    .local v0, isConsumption:Z
    and-int/lit8 v2, v1, 0x1

    if-ne v2, v3, :cond_1

    .line 182
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    #setter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsTouching:Z
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->access$002(Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;Z)Z

    .line 186
    :goto_0
    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 190
    :cond_0
    return v0

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    const/4 v3, 0x0

    #setter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsTouching:Z
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->access$002(Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;Z)Z

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsTouching:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->access$000(Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->onImageFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsTouching:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->access$000(Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->onImageLongPress(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsTouching:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->access$000(Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->onImageScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 150
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsTouching:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->access$000(Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->onImageSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
