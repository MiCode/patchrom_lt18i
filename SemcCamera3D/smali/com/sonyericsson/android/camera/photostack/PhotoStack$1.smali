.class Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;
.super Ljava/lang/Object;
.source "PhotoStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStack;->onLoaded(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;ILcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

.field final synthetic val$index:I

.field final synthetic val$thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStack;ILcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    iput p2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;->val$index:I

    iput-object p3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;->val$thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->access$200(Lcom/sonyericsson/android/camera/photostack/PhotoStack;)Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 525
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;->val$index:I

    if-gez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->access$200(Lcom/sonyericsson/android/camera/photostack/PhotoStack;)Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;->val$thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateThumbnail(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    .line 530
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->access$200(Lcom/sonyericsson/android/camera/photostack/PhotoStack;)Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->invalidate()V

    goto :goto_0

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->access$200(Lcom/sonyericsson/android/camera/photostack/PhotoStack;)Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;->val$index:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;->val$thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateThumbnail(ILcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    goto :goto_1
.end method
