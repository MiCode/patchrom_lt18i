.class Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailLoadTask;
.super Ljava/lang/Object;
.source "MpoThumbnailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbnailLoadTask"
.end annotation


# instance fields
.field private final mRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, request:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailLoadTask;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailLoadTask;->mRequest:Ljava/util/List;

    .line 76
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailLoadTask;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailLoadTask;->mRequest:Ljava/util/List;

    #calls: Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->loadThumbnails(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->access$000(Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;Ljava/util/List;)V

    .line 80
    return-void
.end method
