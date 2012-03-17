.class Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;
.super Landroid/os/AsyncTask;
.source "PhotoStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncDeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStack;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
    .locals 0
    .parameter
    .parameter "thumbnail"

    .prologue
    .line 632
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 633
    iput-object p2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 634
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 638
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getMediaInfo()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalUri:Landroid/net/Uri;

    .line 640
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->access$300(Lcom/sonyericsson/android/camera/photostack/PhotoStack;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackQueryHelper;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    #calls: Lcom/sonyericsson/android/camera/photostack/PhotoStack;->onPostThumbnailDelete(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;Z)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->access$400(Lcom/sonyericsson/android/camera/photostack/PhotoStack;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;Z)V

    .line 646
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 630
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
