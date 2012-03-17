.class Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$1;
.super Ljava/lang/Object;
.source "PhotoStackLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->createLoadCommand(Ljava/util/List;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

.field final synthetic val$requests:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$1;->val$requests:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$1;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$1;->val$requests:Ljava/util/List;

    #calls: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->loadThumbnails(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$400(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Ljava/util/List;)V

    .line 616
    return-void
.end method
