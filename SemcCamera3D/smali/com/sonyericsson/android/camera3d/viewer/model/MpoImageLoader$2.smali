.class Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$2;
.super Ljava/lang/Object;
.source "MpoImageLoader.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->startLoading(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

.field final synthetic val$task:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;Ljava/util/concurrent/FutureTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$2;->val$task:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$2;->val$task:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 117
    return-void
.end method
