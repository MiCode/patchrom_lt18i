.class Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$2;
.super Ljava/lang/Object;
.source "PhotoStackLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->createDecodeCommand(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

.field final synthetic val$request:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$2;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$2;->val$request:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$2;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$2;->val$request:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;

    #calls: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->decodeThumbnail(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$500(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;)V

    .line 634
    invoke-static {}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->reset()V

    .line 635
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 636
    return-void
.end method
